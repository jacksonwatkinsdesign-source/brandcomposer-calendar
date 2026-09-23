#!/usr/bin/env python3
"""Validate a generated update-calendar.scpt before it is committed.

Turns the prompt's soft instructions into enforced constraints. Exits non-zero
with a readable report if the generator produced a broken rotation, so the
workflow keeps the last known-good script instead of committing over it.
"""
import re
import sys
import pathlib
import datetime
from collections import defaultdict

SCRIPT = sys.argv[1] if len(sys.argv) > 1 else "update-calendar.scpt"

RANGE_START = datetime.date(2026, 9, 3)
RANGE_END = datetime.date(2027, 3, 31)

# The roster and the confirmed posts are defined once, in build-calendar.py, and
# read from there. Keeping a second copy here is how a subject gets added in one
# place, missed in the other, and silently dropped from the calendar.
# Only the definitions above the generator's build step are executed, so
# importing them never writes a file.
def _from_generator():
    src = (pathlib.Path(__file__).parent / "build-calendar.py").read_text(encoding="utf-8")
    head = src.split("events = []")[0]
    ns = {}
    exec(compile(head, "build-calendar.py", "exec"), ns)
    return ns["ROSTER"], {(who, d): e[4] for e in ns["POSTS"] for who, d in [(e[0], e[1])]}


try:
    ROSTER, CONFIRMED_POSTS = _from_generator()
except Exception as e:
    print(f"FATAL  cannot read the roster from build-calendar.py: {e}")
    sys.exit(2)

MAX_GAP_DAYS = 32
TAIL_WINDOW_DAYS = 60
# The point of the rotation is that a viewer never feels they have seen this
# before. MIN_REPEAT_DAYS is that rule: a subject may not come round again
# sooner than this. MAX_SILENT_DAYS is its other half — post often enough that
# the feed reads as active. Even slot counts are not a goal; a subject running
# thinner than another costs a viewer nothing, so the spread is reported only.
# Spacing is not a fixed number of days. One story a weekday means the queue
# takes as many working days to come round as there are subjects, so the cycle
# is whatever the inventory supports and widens every time a subject is added.
# The checker therefore derives the expectation instead of hardcoding it: the
# old "30 days" was simply what 31 pieces supported in 2026 and would go stale.
#   expected cycle  = roster size x 7/5  (working days -> calendar days)
# MIN_REPEAT_DAYS is the separate hard floor: closer than this and a viewer may
# genuinely notice a repeat, whatever the roster size.
MIN_REPEAT_DAYS = 21
CYCLE_SHORTFALL = 4  # days below the achievable cycle before it is reported
MAX_SILENT_DAYS = 3
COUNT_SPREAD = 4
MAX_PER_DAY = 7
ALLOWED_TIMES = {"9:00:00 AM", "1:00:00 PM", "7:00:00 PM"}

# AppleScript can express an event date two ways, and the generator uses both:
#   inline    ... start date:date "Thursday, September 3, 2026 9:00:00 AM"
#   by name   set slotDate to date "..."   /   ... start date:slotDate
# Parsing walks the file in order so reassigned variables resolve correctly.
SET_DATE_RE = re.compile(r'^\s*set\s+([A-Za-z_]\w*)\s+to\s+date\s+"([^"]+)"')
SUMMARY_RE = re.compile(r'summary\s*:\s*"([^"]*)"')
START_INLINE_RE = re.compile(r'start\s+date\s*:\s*\(?\s*date\s+"([^"]+)"')
START_VAR_RE = re.compile(r'start\s+date\s*:\s*([A-Za-z_]\w*)')

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

# Models often wrap code in a markdown fence despite being told not to.
# Strip it rather than failing over formatting.
fenced = re.search(r"```(?:applescript|scpt)?\s*\n(.*?)```", text, re.S)
if fenced:
    print("NOTE   output was wrapped in a markdown code fence; unwrapping")
    text = fenced.group(1)
    # Write it back — a fence left in place would break osascript at run time.
    with open(SCRIPT, "w", encoding="utf-8") as fh:
        fh.write(text)


def dump_head(reason):
    """Show what the generator actually produced, so a parse failure is diagnosable."""
    print(f"FATAL  {reason}")
    lines = text.splitlines()
    print(f"       {len(lines)} lines, {len(text)} characters. First 40 lines:")
    print("       " + "-" * 60)
    for i, line in enumerate(lines[:40], 1):
        print(f"       {i:>3} | {line[:200]}")
    if len(lines) > 40:
        print(f"       ... {len(lines) - 40} more lines")
    print("       " + "-" * 60)

events = []
date_vars = {}
for lineno, line in enumerate(text.splitlines(), 1):
    assign = SET_DATE_RE.match(line)
    if assign:
        date_vars[assign.group(1)] = assign.group(2)
        continue
    if "make new event" not in line:
        continue

    sm = SUMMARY_RE.search(line)
    if not sm:
        fail("event has a summary", f"line {lineno}: make new event with no summary")
        continue
    summary = sm.group(1)

    inline = START_INLINE_RE.search(line)
    if inline:
        start = inline.group(1)
    else:
        byname = START_VAR_RE.search(line)
        if not byname:
            fail("event has a start date", f"line {lineno}: {summary!r}")
            continue
        var = byname.group(1)
        if var not in date_vars:
            fail("start date resolves",
                 f"line {lineno}: {var!r} is used before it is set — {summary!r}")
            continue
        start = date_vars[var]

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
    dump_head("no events parsed — nothing matched the expected event format")
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
    if e["kind"] == "POST" and (e["subject"], e["date"]) not in set(CONFIRMED_POSTS):
        fail("posts are confirmed",
             f"invented post: {e['subject']} on {e['date']} — art is not committed")

scheduled_posts = {(e["subject"], e["date"]) for e in events if e["kind"] == "POST"}
for subject, date in set(CONFIRMED_POSTS) - scheduled_posts:
    fail("confirmed posts kept",
         f"{subject} {date} is confirmed art but was dropped from this run")

for subject, date in set(CONFIRMED_POSTS) & scheduled_posts:
    frames = [e for e in events if e["subject"] == subject and e["date"] == date
              and e["kind"] == "STORY"]
    expected = CONFIRMED_POSTS[(subject, date)]
    if len(frames) != expected:
        fail("story frame per slide",
             f"{subject} {date} has {len(frames)} story frame(s) for {expected} image(s); "
             "each image runs as its own native frame on post day")
    if expected < 2:
        warn("single image, no second chance",
             f"{subject} {date} is one image, so Instagram cannot re-serve a slide two. "
             "Its reach is not comparable with the carousels")

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

# A confirmed post or a tentpole hook is pinned to a real-world date and cannot
# be moved to even out spacing. A longer gap *following* one of those is the
# rotation resuming its own cycle after a featured moment, not a subject being
# skipped — so it is reported, but it does not fail the run.
anchored = {
    (e["subject"], e["date"]) for e in events
    if e["kind"] == "POST" or "HOOK" in e["summary"]
}

observed_gaps = []
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
        if gap < MIN_REPEAT_DAYS:
            if (name, a) in anchored or (name, b) in anchored:
                warn("close repeat at an anchor",
                     f"{name} runs again {gap}d after {a} — pinned to a post or hook date. "
                     "Use a different image so nobody sees the same one twice")
            else:
                fail("too soon", f"{name} runs again only {gap}d after {a} "
                                 f"(nothing may come round inside {MIN_REPEAT_DAYS}d)")
        elif gap > MAX_GAP_DAYS:
            if (name, a) in anchored:
                warn("gap after an anchor",
                     f"{name} sits out {gap}d after {a}, which is a pinned post or hook date")
            else:
                warn("long gap", f"{name} sits out {gap}d after {a} — inventory sitting idle")
        else:
            observed_gaps.append((gap, name, a))

if observed_gaps:
    expected = round(len(ROSTER) * 7 / 5)
    tightest, name, a = min(observed_gaps)
    widest = max(observed_gaps)[0]
    print(f"Repeat spacing: {tightest}-{widest}d. A roster of {len(ROSTER)} posting "
          f"five days a week supports about {expected}d.")
    if tightest < expected - CYCLE_SHORTFALL:
        warn("tighter than the roster allows",
             f"{name} repeats after {tightest}d when {expected}d is achievable — "
             "the rotation is doubling back early")

counts = {n: len(set(d)) for n, d in by_sub.items() if n in ROSTER}
if counts:
    lo, hi = min(counts.values()), max(counts.values())
    if hi - lo > COUNT_SPREAD:
        thin = [n for n, c in counts.items() if c == lo]
        fat = [n for n, c in counts.items() if c == hi]
        warn("uneven slot counts",
             f"slot counts span {lo}–{hi}; thinnest {', '.join(thin)} / "
             f"heaviest {', '.join(fat)}. Not a failure — spacing is what matters")

# --- the feed stays active --------------------------------------------------
active_days = sorted({e["date"] for e in events})
for a, b in zip(active_days, active_days[1:]):
    silent = (b - a).days - 1
    if silent > MAX_SILENT_DAYS:
        fail("consistency", f"{silent} days with nothing posted, {a} to {b}")

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
