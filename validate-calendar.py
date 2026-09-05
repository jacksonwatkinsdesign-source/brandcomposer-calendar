#!/usr/bin/env python3
"""Validate a generated update-calendar.scpt before it is committed.

Turns the prompt's soft instructions into enforced constraints. Exits non-zero
with a readable report if the generator produced a broken rotation, so the
workflow keeps the last known-good script instead of committing over it.
"""
import re
import sys
import datetime
from collections import defaultdict

SCRIPT = sys.argv[1] if len(sys.argv) > 1 else "update-calendar.scpt"

RANGE_START = datetime.date(2026, 9, 3)
RANGE_END = datetime.date(2027, 3, 31)

ROSTER = [
    "Karlie", "Núria", "Paula", "Kate Bartlett", "Erin", "Amelie",
    "Lily Collins", "Renate", "Rebecca", "Gracie Abrams", "Zendaya",
    "Romy", "Elle", "Anya", "Odessa", "Olivia",
]

# Posts the generator is allowed to schedule: art exists and the date is committed.
CONFIRMED_POSTS = {
    ("Odessa", datetime.date(2026, 9, 10)),
    ("Olivia", datetime.date(2026, 9, 24)),
}

MAX_GAP_DAYS = 32
TAIL_WINDOW_DAYS = 60
COUNT_SPREAD = 3
MAX_PER_DAY = 7
ALLOWED_TIMES = {"9:00:00 AM", "1:00:00 PM", "7:00:00 PM"}

EVENT_RE = re.compile(
    r'summary:"(?P<summary>.*?)",\s*start date:date "(?P<start>.*?)"'
)

failures, warnings = [], []


def fail(rule, detail):
    failures.append((rule, detail))


def warn(rule, detail):
    warnings.append((rule, detail))


try:
    text = open(SCRIPT, encoding="utf-8").read()
except OSError as e:
    print(f"FATAL  cannot read {SCRIPT}: {e}")
    sys.exit(2)

events = []
for m in EVENT_RE.finditer(text):
    summary, start = m.group("summary"), m.group("start")
    try:
        dt = datetime.datetime.strptime(start, "%A, %B %d, %Y %I:%M:%S %p")
    except ValueError:
        fail("date parses", f"unparseable start date: {start!r}")
        continue
    # AppleScript writes the weekday itself; a wrong one silently shifts the event.
    if dt.strftime("%A") != start.split(",")[0]:
        fail("weekday matches date",
             f"{start!r} — {dt.date()} is a {dt.strftime('%A')}")
    kind = ("POST" if summary.startswith("[POST]")
            else "STORY" if summary.startswith("[STORY]") else "OTHER")
    body = re.sub(r"^\[(POST|STORY)\]\s*", "", summary)
    subject = body.split("—")[0].strip()
    events.append({
        "kind": kind, "subject": subject, "summary": summary,
        "date": dt.date(), "time": dt.strftime("%-I:%M:%S %p"),
    })

if not events:
    print("FATAL  no events parsed — generator likely returned prose or an error")
    sys.exit(2)

# --- structural -------------------------------------------------------------
if "end tell" not in text:
    fail("script closes", "no `end tell` — output looks truncated")

for e in events:
    if e["kind"] == "OTHER":
        fail("event is tagged", f"neither [POST] nor [STORY]: {e['summary']!r}")
    if not (RANGE_START <= e["date"] <= RANGE_END):
        fail("inside date range", f"{e['date']} — {e['summary']!r}")
    if e["time"] not in ALLOWED_TIMES:
        fail("allowed times", f"{e['time']} on {e['date']} — {e['summary']!r}")

# --- naming -----------------------------------------------------------------
for e in events:
    s = e["subject"]
    if re.search(r"\b(I{1,3}|IV|V)\b", s) or "Slide" in s or "Grid post" in s:
        fail("canonical names",
             f"{s!r} carries artwork/slide info — rotation is per person")
    elif s not in ROSTER:
        fail("on roster", f"{s!r} is not a roster name")

# --- posts ------------------------------------------------------------------
for e in events:
    if e["kind"] == "POST" and (e["subject"], e["date"]) not in CONFIRMED_POSTS:
        fail("posts are confirmed",
             f"invented post: {e['subject']} on {e['date']} — art is not committed")

scheduled_posts = {(e["subject"], e["date"]) for e in events if e["kind"] == "POST"}
for subject, date in CONFIRMED_POSTS - scheduled_posts:
    fail("confirmed posts kept",
         f"{subject} {date} is confirmed art but was dropped from this run")

for subject, date in CONFIRMED_POSTS & scheduled_posts:
    frames = [e for e in events if e["subject"] == subject and e["date"] == date
              and e["kind"] == "STORY"]
    if len(frames) < 2:
        fail("carousel story frames",
             f"{subject} {date} has {len(frames)} story frame(s); "
             "every post is a carousel and each slide runs as its own frame")

# --- per-day load -----------------------------------------------------------
per_day = defaultdict(int)
for e in events:
    per_day[e["date"]] += 1
for date, n in sorted(per_day.items()):
    if n > MAX_PER_DAY:
        fail("daily ceiling", f"{date} has {n} slots (max {MAX_PER_DAY})")

# --- rotation ---------------------------------------------------------------
by_sub = defaultdict(list)
for e in events:
    by_sub[e["subject"]].append(e["date"])

for name in ROSTER:
    if name not in by_sub:
        fail("roster covered", f"{name} never appears")

tail_cutoff = RANGE_END - datetime.timedelta(days=TAIL_WINDOW_DAYS)
for name, dates in sorted(by_sub.items()):
    if name not in ROSTER:
        continue
    dates = sorted(set(dates))
    if dates[-1] < tail_cutoff:
        fail("no dropouts",
             f"{name} last appears {dates[-1]}, "
             f"{(RANGE_END - dates[-1]).days}d before the range ends")
    for a, b in zip(dates, dates[1:]):
        gap = (b - a).days
        if gap > MAX_GAP_DAYS:
            fail("rotation gap", f"{name} sits out {gap}d after {a} (max {MAX_GAP_DAYS})")

counts = {n: len(set(d)) for n, d in by_sub.items() if n in ROSTER}
if counts:
    lo, hi = min(counts.values()), max(counts.values())
    if hi - lo > COUNT_SPREAD:
        thin = [n for n, c in counts.items() if c == lo]
        fat = [n for n, c in counts.items() if c == hi]
        fail("even cadence",
             f"slot counts span {lo}–{hi} (max spread {COUNT_SPREAD}); "
             f"thinnest {', '.join(thin)} / heaviest {', '.join(fat)}")

if "180" in text:
    warn("stale count", "the string '180' still appears — likely a leftover claim")

# --- report -----------------------------------------------------------------
print(f"Parsed {len(events)} events, {len(counts)} of {len(ROSTER)} roster subjects, "
      f"{RANGE_START} → {RANGE_END}")
if counts:
    print("Slots per subject: " + ", ".join(
        f"{n} {c}" for n, c in sorted(counts.items(), key=lambda kv: -kv[1])))

for rule, detail in warnings:
    print(f"WARN   [{rule}] {detail}")

if failures:
    print(f"\n{len(failures)} constraint violation(s):")
    for rule, detail in failures:
        print(f"FAIL   [{rule}] {detail}")
    print("\nKeeping the previous script. Nothing committed.")
    sys.exit(1)

print("\nAll constraints satisfied.")
