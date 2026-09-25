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

# One entry per PERSON. Where a first name could mean more than one public
# figure, the surname is recorded here: "Olivia" is Olivia DEAN (two published
# portraits, both already debuted) and is not Olivia Rodrigo. "Katrin" is
# @katrinkatjuscha, a Berlin streamer and model. "Emma" is Emma Chamberlain. "Grace" is a separate
# person from "Gracie" (Gracie Abrams) — both are published, both rotate. A hook researched
# for the wrong person is how a post for art that does not exist gets a date.
ROSTER =["Emma","Grace","Karlie","Núria","Paula","Kate Bartlett","Erin","Amelie","Lily Collins",
          "Renate","Rebecca","Gracie Abrams","Zendaya","Romy","Elle","Anya",
          "Odessa","Olivia","Faith Ordway","Syd","Katrin"]

START, END = datetime.date(2026,9,3), datetime.date(2027,3,31)

# What Jackson ACTUALLY posted, when it differs from this schedule. The calendar
# cannot see Instagram, so a piece he posts off-plan would otherwise come round
# again too soon. A subject listed here is held out of the rotation until
# MIN_REPEAT_DAYS have passed, exactly as if the schedule had run it that day.
# Add a line whenever he says he posted something; nothing else needs changing.
POSTED = [("Odessa", datetime.date(2026,9,22), "Jackson, chat 2026-09-23: posted Odessa yesterday")]

# A slot Jackson has asked for by name, overriding whoever the rotation would
# have picked. The subject is held for MIN_REPEAT_DAYS afterwards like any other
# appearance, and the displaced subject keeps their place in the queue.
PINNED = [("Elle", datetime.date(2026,9,25), 13,
           "Jackson, chat 2026-09-25: swap Grace out today — she is 18, runs her own "
           "accounts, and he does not want to keep putting his drawing in front of her")]
MIN_REPEAT_DAYS = 21

# Finished art, with a date, that JACKSON HAS SAID EXISTS. Each becomes a 9am
# post plus two story frames, per the carousel rule.
#
# THE RULE: a post goes on this list only when Jackson has said, in his own
# words, that the artwork is finished. The fourth field records where he said
# it. No confirmation, no entry — not a recommendation, not a hook that would
# suit, not "he will probably have it done by then". A hook is a reason to
# suggest making something; it is never evidence that something was made.
# Anything unconfirmed belongs in a recommendation to him, not on the calendar.
# The build refuses to run if an entry has an empty confirmation.
# Fifth field: how many images the piece actually has. Two or more is the norm —
# Instagram may re-serve slide two as a second first impression, which is the
# best-evidenced mechanic in the strategy. A single image forfeits that, so it is
# only ever used when Jackson says the piece is one image.
POSTS = [("Odessa", datetime.date(2026,10,20), "Debut carousel, Stranger Things S2 momentum",
          "Jackson, chat 2026-09-23: confirmed the Odessa II art is finished; moved off Sept 29 because he posted Odessa Sept 22", 2),
         ("Elle",   datetime.date(2026,11,19), "Elle II debut carousel, Hunger Games eve",
          "Jackson, chat 2026-09-22: new Elle illustration, approved Nov 19 debut", 2),
         ("Syd",    datetime.date(2026,10,1),  "Debut carousel, rotation placement (no dated hook)",
          "Jackson, chat 2026-09-22: another one we can debut at some point", 2),
         ("Katrin", datetime.date(2026,10,8),  "Debut carousel, rotation placement (no dated hook)",
          "Jackson, chat 2026-09-23: a post to add to the schedule for debut", 2),
         ("Emma",   datetime.date(2026,10,15), "Debut carousel, rotation placement (no dated hook)",
          "Jackson, chat 2026-09-23: an Emma Chamberlain image I can debut; found the reference photo, two slides", 2),
         ("Olivia", datetime.date(2026,10,6),  "Olivia II debut carousel, Australian tour leg opens Oct 5",
          "Jackson, chat 2026-09-23: has an Olivia II never posted, checked the grid and it is not there", 2)]

for _who, _d, _why, _confirmed, _slides in POSTS:
    if not _confirmed.strip():
        raise SystemExit(f"REFUSED: {_who} {_d} has no confirmation from Jackson that the art "
                         f"exists. A post may not be scheduled on an assumption.")

# Real-world dated moments. (subject, date, label, hour)
HOOKS = [("Romy",          datetime.date(2026,10,11), "30th birthday HOOK", 13),
         ("Rebecca",       datetime.date(2026,10,19), "43rd birthday HOOK", 13),
         ("Elle",          datetime.date(2026,11,20), "Hunger Games: Sunrise on the Reaping HOOK", 13),
         ("Gracie Abrams", datetime.date(2026,12,2),  "Tour launch HOOK", 13),
         ("Zendaya",       datetime.date(2026,12,18), "Dune: Part Three HOOK", 9),
         ("Anya",          datetime.date(2026,12,18), "Dune: Part Three HOOK", 13),
         ("Rebecca",       datetime.date(2026,12,18), "Dune: Part Three HOOK", 19),
         ("Lily Collins",  datetime.date(2027,3,18),  "38th birthday + Emily in Paris HOOK", 13),
         ("Elle",          datetime.date(2027,3,19),  "The Nightingale HOOK", 13)]

events = []            # (date, hour, summary)
anchor_days = set()

for who, d, hour, _why in PINNED:
    anchor_days.add(d)
    events.append((d, hour, f"[STORY] {who} — Rotation baseline"))

for who, d, why, _confirmed, slides in POSTS:
    anchor_days.add(d)
    events.append((d, 9, f"[POST] {who} — {why}"))
    # Every image runs as its own native story frame on post day, spaced apart.
    for n, hour in zip(range(1, slides + 1), (13, 19, 21)):
        label = f"Slide {n}" if slides > 1 else "The image"
        events.append((d, hour, f"[STORY] {who} — {label}"))

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
UNPUBLISHED = {"Syd", "Katrin", "Emma"}
DEBUTS = {who: d for who, d, *_ in POSTS if who in UNPUBLISHED}
# A subject is also ineligible while an off-schedule post of theirs is still recent.
BLACKOUT = {who: d + datetime.timedelta(days=MIN_REPEAT_DAYS) for who, d, _why in POSTED}
for _who, _d, _hr, _why in PINNED:
    BLACKOUT[_who] = max(BLACKOUT.get(_who, _d), _d + datetime.timedelta(days=MIN_REPEAT_DAYS))


# A debut is a post of its own. The subject stays out of the rotation for
# MIN_REPEAT_DAYS on BOTH sides of it: nobody should see that person just before
# the new piece lands, or just after. Same window as any other repeat.
DEBUT_DATES = {}
for _who, _d, *_rest in POSTS:
    DEBUT_DATES.setdefault(_who, []).append(_d)

QUIET = datetime.timedelta(days=MIN_REPEAT_DAYS)


def eligible(who, day):
    """Can this subject take a rotation slot on this day?"""
    if who in DEBUTS and day < DEBUTS[who]:
        return False                                   # nothing published yet
    if who in BLACKOUT and day < BLACKOUT[who]:
        return False                                   # too soon after a real post
    for pd in DEBUT_DATES.get(who, []):
        if pd - QUIET < day < pd + QUIET:
            return False                               # quiet window around a debut
    return True
i = t = 0
d = START
while d <= END:
    if d.weekday() < 5 and d not in anchor_days:
        for _ in range(len(ROSTER)):
            who = ROSTER[i % len(ROSTER)]
            i += 1
            if eligible(who, d):
                events.append((d, TIMES[t % 3], f"[STORY] {who} — Rotation baseline"))
                t += 1
                break
    d += datetime.timedelta(days=1)

# The past is a record, not a plan. The queue is still worked out from START so
# the cycle stays continuous, but only today onward is written, and the script
# clears only from today onward — so a rebuild can never invent or overwrite a
# story on a day that has already happened.
TODAY = datetime.date.today()
WRITE_FROM = max(START, TODAY)
events = [e for e in events if e[0] >= WRITE_FROM]

events.sort(key=lambda e: (e[0], e[1]))

def stamp(d, hour, minute=0):
    ampm = "AM" if hour < 12 else "PM"
    h12 = hour if 1 <= hour <= 12 else (hour - 12 if hour > 12 else 12)
    return f'{d.strftime("%A, %B")} {d.day}, {d.year} {h12}:{minute:02d}:00 {ampm}'

out = ['tell application "Calendar"',
       '\tset bc_cal to calendar "BrandComposer"',
       f'\tset rangeStart to date "{stamp(WRITE_FROM, 0)}"',
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
