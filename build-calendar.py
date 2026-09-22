#!/usr/bin/env python3
"""Build the BrandComposer calendar script from the rules below.

Deterministic: the same rules always produce a byte-identical schedule, so
rebuilding is safe and only ever changes what a rule change touched.

To change the schedule, edit the four lists below — the roster, the confirmed
posts, the hooks, and the weekday rhythm — then rebuild. Nothing else needs
editing, and nothing moves that you did not move.

Usage:  python3 build-calendar.py [output-path]
"""
import datetime
import sys

OUTPUT = sys.argv[1] if len(sys.argv) > 1 else "update-calendar.scpt"

ROSTER =["Karlie","Núria","Paula","Kate Bartlett","Erin","Amelie","Lily Collins",
          "Renate","Rebecca","Gracie Abrams","Zendaya","Romy","Elle","Anya",
          "Odessa","Olivia","Faith Ordway","Syd"]

START, END = datetime.date(2026,9,3), datetime.date(2027,3,31)

# Finished, unpublished art with a committed date. Each becomes a 9am post plus
# two story frames, per the carousel rule.
POSTS = [("Odessa", datetime.date(2026,9,29), "Debut carousel, Stranger Things S2 momentum"),
         ("Olivia", datetime.date(2026,9,24), "Debut carousel, Rodrigo Unraveled Tour launch"),
         ("Elle",   datetime.date(2026,11,19), "Elle II debut carousel, Hunger Games eve"),
         ("Syd",    datetime.date(2026,10,1),  "Debut carousel, rotation placement (no dated hook)")]

# Real-world dated moments. (subject, date, label, hour)
HOOKS = [("Romy",          datetime.date(2026,10,11), "30th birthday HOOK", 13),
         ("Rebecca",       datetime.date(2026,10,19), "43rd birthday HOOK", 13),
         ("Elle",          datetime.date(2026,11,20), "Hunger Games: Sunrise on the Reaping HOOK", 13),
         ("Gracie Abrams", datetime.date(2026,12,2),  "Tour launch HOOK", 13),
         ("Zendaya",       datetime.date(2026,12,18), "Dune: Part Three HOOK", 9),
         ("Anya",          datetime.date(2026,12,18), "Dune: Part Three HOOK", 13),
         ("Rebecca",       datetime.date(2026,12,18), "Dune: Part Three HOOK", 19),
         ("Olivia",        datetime.date(2027,2,20),  "24th birthday HOOK", 13),
         ("Lily Collins",  datetime.date(2027,3,18),  "38th birthday + Emily in Paris HOOK", 13),
         ("Elle",          datetime.date(2027,3,19),  "The Nightingale HOOK", 13)]

events = []            # (date, hour, summary)
anchor_days = set()

for who, d, why in POSTS:
    anchor_days.add(d)
    events.append((d, 9,  f"[POST] {who} — {why}"))
    events.append((d, 13, f"[STORY] {who} — Carousel slide 1"))
    events.append((d, 19, f"[STORY] {who} — Carousel slide 2"))

for who, d, why, hr in HOOKS:
    anchor_days.add(d)
    events.append((d, hr, f"[STORY] {who} — {why}"))

# Baseline rotation: strict round-robin so every subject cycles at the same
# interval. Weekdays only, one slot a day. Tue/Wed/Thu are the strongest days
# in the large-sample data (Buffer, 9.6M posts) and weekends the weakest, so
# Mon-Fri covers the best window every week without inventing a rhythm his own
# log has never tested. Anchor days are skipped rather than doubled up — the
# queue does not advance, so nobody is passed over.
TIMES = [13, 13, 19]
# Subjects with nothing published yet: the rotation may not story them before
# their debut, because there is no art to reshare. Subjects already on the grid
# are not listed here even when a second piece is coming (Elle II, Odessa II,
# Olivia II are second portraits of subjects who already have published work).
# Remove a name once its debut has run. Skipping does not lose anyone's turn;
# the queue just reaches them later.
UNPUBLISHED = {"Syd"}
DEBUTS = {who: d for who, d, _ in POSTS if who in UNPUBLISHED}
i = t = 0
d = START
while d <= END:
    if d.weekday() < 5 and d not in anchor_days:
        for _ in range(len(ROSTER)):
            who = ROSTER[i % len(ROSTER)]
            i += 1
            if who not in DEBUTS or d >= DEBUTS[who]:
                events.append((d, TIMES[t % 3], f"[STORY] {who} — Rotation baseline"))
                t += 1
                break
    d += datetime.timedelta(days=1)

events.sort(key=lambda e: (e[0], e[1]))

def stamp(d, hour, minute=0):
    ampm = "AM" if hour < 12 else "PM"
    h12 = hour if 1 <= hour <= 12 else (hour - 12 if hour > 12 else 12)
    return f'{d.strftime("%A, %B")} {d.day}, {d.year} {h12}:{minute:02d}:00 {ampm}'

out = ['tell application "Calendar"',
       '\tset bc_cal to calendar "BrandComposer"',
       f'\tset rangeStart to date "{stamp(START, 0)}"',
       f'\tset rangeEnd to date "{stamp(END + datetime.timedelta(days=1), 0)}"',
       '\tdelete (every event of bc_cal whose start date is greater than or equal to '
       'rangeStart and start date is less than rangeEnd)',
       '']
for d, hour, summary in events:
    end_h, end_m = (hour, 15)
    out.append(f'\tmake new event at end of events of bc_cal with properties '
               f'{{summary:"{summary}", start date:date "{stamp(d, hour)}", '
               f'end date:date "{stamp(d, end_h, end_m)}"}}')
out += ['', 'end tell', '',
        f'display notification "BrandComposer calendar rebuilt with {len(events)} events." '
        f'with title "Calendar Update Complete"']

with open(OUTPUT, "w", encoding="utf-8") as fh:
    fh.write("\n".join(out) + "\n")
print(f"Built {len(events)} events for {len(ROSTER)} subjects -> {OUTPUT}")
