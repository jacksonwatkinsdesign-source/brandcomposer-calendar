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
# @katrinkatjuscha, a Berlin streamer and model. "Emma" is Emma Chamberlain. "Florence" is Florence PUGH, not Florence Welch.
# "Bea" is BEABADOOBEE — Beatrice Kristi Ilejay Laus. One word, all lowercase,
# in the caption and the tag.
# "Samara" is Samara WEAVING, the Australian actress. "Inde" is Inde NAVARRETTE
# — two r's, and Inde not Indy. Jackson says it "Navaretti"; the spelling is what
# goes in a caption or a tag, so do not follow the pronunciation. "Grace" is a separate
# person from "Gracie" (Gracie Abrams) — both are published, both rotate. A hook researched
# for the wrong person is how a post for art that does not exist gets a date.
ROSTER =["Emma","Grace","Karlie","Núria","Paula","Kate Bartlett","Erin","Amelie","Lily Collins",
          "Renate","Rebecca","Gracie Abrams","Zendaya","Romy","Elle","Anya",
          "Odessa","Olivia","Faith Ordway","Syd","Katrin","Florence","Samara","Inde","Bea"]

START, END = datetime.date(2026,9,3), datetime.date(2027,3,31)

# What Jackson ACTUALLY posted, when it differs from this schedule. The calendar
# cannot see Instagram, so a piece he posts off-plan would otherwise come round
# again too soon. A subject listed here is held out of the rotation until
# MIN_REPEAT_DAYS have passed, exactly as if the schedule had run it that day.
# Add a line whenever he says he posted something; nothing else needs changing.
POSTED = [("Odessa", datetime.date(2026,9,22), "Jackson, chat 2026-09-23: posted Odessa yesterday"),
          ("Syd",    datetime.date(2026,9,30), "Jackson, chat 2026-10-02: confirmed the Syd debut went up on the 30th")]

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
# Fifth field: how many images the piece actually has. THREE is now the norm for
# a debut — the finished illustration, the Fresco timelapse of it being drawn,
# then the reference photograph, in that order.
#   Jackson, chat 2026-09-27: "all debuts from now on will be at least three
#   images in the carousel", and, asked whether the seven already scheduled
#   should be bumped from two to three, he chose all seven.
#
# TIMELAPSE AVAILABILITY IS THE LIMIT, AND IT IS NOT RELIABLE. Fresco loses the
# recording on some pieces — it exports a 3-second stub instead. Checked piece by
# piece on 2026-09-27: Katrin, Elle II and Florence have full timelapses; Syd,
# Olivia II, Emma, Odessa II and Samara do not, and never will. Those five are
# two slides — illustration, then reference photograph.
#
# THREE REMAINS THE DEFAULT for anything added from here. Jackson, chat
# 2026-09-27: "let's not change our rule... assume that you're going to have that
# for everything going forward unless I just told you no." Only drop an entry to
# two when he has said that piece has no timelapse.
#
# Slide two matters most: Instagram may re-serve it as a second first impression,
# which is the best-evidenced mechanic in the strategy. The timelapse sits there
# because it opens on the finished piece (verified — Fresco's frame 0 is the
# completed artwork), so it works cold. The reference photo sits at slide three
# so that a viewer served slide two first still sees Jackson's work, not the
# photographer's. A single image forfeits the mechanic entirely and is only ever
# used when Jackson says the piece is one image.
POSTS = [("Odessa", datetime.date(2026,10,20), "Debut carousel, Stranger Things S2 momentum",
          "Jackson, chat 2026-09-23: confirmed the Odessa II art is finished; moved off Sept 29 because he posted Odessa Sept 22", 2),
         ("Elle",   datetime.date(2026,11,19), "Elle II debut carousel, Hunger Games eve",
          "Jackson, chat 2026-09-22: new Elle illustration, approved Nov 19 debut", 3),
         ("Emma",   datetime.date(2026,10,15), "Debut carousel, rotation placement (no dated hook)",
          "Jackson, chat 2026-09-23: an Emma Chamberlain image I can debut; found the reference photo, two slides", 2),
         ("Olivia", datetime.date(2026,10,6),  "Olivia II debut carousel, Australian tour leg opens Oct 5",
          "Jackson, chat 2026-09-23: has an Olivia II never posted, checked the grid and it is not there", 2),
         ("Florence", datetime.date(2026,12,17), "Florence P debut carousel, eve of Dune: Part Three and Avengers: Doomsday",
          "Jackson, chat 2026-09-26: has a Florence Pugh piece, ready enough to put on the calendar, not likely to change much about it", 3),
         ("Samara",   datetime.date(2026,10,28), "Debut carousel, no hook in window — first free week after the October run",
          "Jackson, chat 2026-09-27: \"we can add a Samara Weaving post to the schedule, the drawing's already done, "
          "it's just gotta be turned into a post\". Hook search found nothing usable inside the calendar window: "
          "Over Your Dead Body finished its run (theatrical Apr, AMC+ Jul 2026) and The Legend of Zelda opens "
          "30 Apr 2027, just past END. Her 35th birthday, 23 Feb 2027, is in range but Jackson has already "
          "dismissed birthdays as a hook. So she is placed by the cadence rule, not by an occasion.", 2),
         ("Inde",     datetime.date(2026,11,3),  "Debut carousel, riding the SNL Halloween episode she hosted 31 Oct",
          "Jackson, chat 2026-09-27: an Inde Navarrette illustration that can be used, with the original photo "
          "and a timelapse, so it can be added to the calendar. Hook: she hosts the Saturday Night Live "
          "Halloween episode, Sat 31 Oct 2026, confirmed on NBC's own site. Placed the TUESDAY AFTER rather "
          "than the eve: a film release builds anticipation beforehand, but SNL generates its material during "
          "and after — clips drop Sunday and searches peak Mon-Tue. It also lands in an empty week, where the "
          "Thursday before would have been a second debut in Samara's week.", 3),
         ("Bea",      datetime.date(2026,10,13), "Debut carousel, eve of her Atlanta arena date — LOCAL HOOK TEST",
          "Jackson, chat 2026-10-02: finished a beabadoobee piece with the original photograph and a "
          "timelapse, ready to go. Hook: she plays Gas South Arena, Duluth GA, Wed 14 Oct, on her first "
          "arena tour (1-29 Oct NA, album Pylon out 18 Sep 2026). Placed the eve rather than the day "
          "because Emma debuts Thu 15 and the 14th would stack two debuts back to back. "
          "THIS ONE IS A TEST, AND THE LOG SHOULD TREAT IT AS ONE: every hook used so far attaches the "
          "account to a global event it is invisible inside. A local arena show is the first hook where "
          "the mechanism is plausible at 372 followers — Atlanta is his largest follower city (27, "
          "against Birmingham at 10) and Instagram surfaces by location. Measure NON-FOLLOWER SHARE "
          "after the stories expire, not raw views; raw views move because he promoted it.", 3)]

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
         ("Elle",          datetime.date(2027,3,19),  "The Nightingale HOOK", 13),
         ("Florence",      datetime.date(2027,1,3),   "31st birthday HOOK", 13)]

# Every image in a carousel runs as its own native story frame on the day that
# piece appears — on a debut day and on a reshare day alike. Slide N goes out at
# the Nth time below, so frames are hours apart rather than back to back.
#
# A debut day starts at 9am, with slide 1 going to stories at the same moment
# the post goes up. That is Jackson's own long-standing practice and it is the
# right one: the story lands inside the post's first distribution window, which
# is the only lever he has on early engagement, and it widens the spread across
# the day (9/1/7) instead of crowding the afternoon (1/7/9pm).
#   Jackson, chat 2026-09-27: "normally that's what I have done... I debut it
#   and then I immediately share at least the first of the carousel images at
#   the same time that I do the post."
#
# A reshare day has no post to anchor to, so it starts at 1pm — except at four
# slides, where it needs the whole day. Picking the tuple by slide count keeps
# the common cases well spread instead of front-loading a two-frame day into the
# morning. Four slides exist because of the alternate-colourway slide.
POST_DAY_TIMES = (9, 13, 19, 21)
STORY_TIMES_BY_COUNT = {4: (9, 13, 19, 21)}
STORY_TIMES = (13, 19, 21)

# How many images a subject's PUBLISHED work actually has, for reshares.
#
# THE DEFAULT IS ONE, DELIBERATELY. The rotation must never schedule a frame for
# an image that does not exist — a phantom "Slide 2" is an instruction Jackson
# cannot follow, which is worse than a missed opportunity. So the default
# under-promises, and a subject is raised only on evidence.
#
# The back catalogue is mostly single images. Of the 23 published posts, 20 are
# one image; the only carousels are Gracie II (3), Grace (2) and Odessa (2).
# Source: illustration-content-strategy-SYSTEM-DOCS.md, inventory of 4 Sep 2026.
# Caught on 2026-09-27 after the calendar told Jackson to story a second Karlie
# and Núria frame that does not exist.
PUBLISHED_SLIDES = {
    "Gracie Abrams": 3,   # Gracie II
    "Grace":         2,   # Grace Bowers
    "Odessa":        2,
    "Syd":           2,   # debuted 30 Sep 2026; no timelapse, so illustration + reference
}
DEFAULT_PUBLISHED_SLIDES = 1


def frames(who, day, slides, note, post_day=False):
    """One story event per image, spaced across the day."""
    times = POST_DAY_TIMES if post_day else STORY_TIMES_BY_COUNT.get(slides, STORY_TIMES)
    if slides > len(times):
        raise SystemExit(
            f"REFUSED: {who} {day} has {slides} images but only {len(times)} "
            f"story times exist. Add a time rather than silently dropping frames.")
    out = []
    for n in range(1, slides + 1):
        label = f"Slide {n}" if slides > 1 else "The image"
        out.append((day, times[n - 1], f"[STORY] {who} — {label}{note}"))
    return out


def published_slides(who, day):
    """Most images available for this subject on this day.

    A debut that has already run is published work, so once its date has passed
    its slide count is available to the rotation. That keeps the table from
    going stale every time a piece goes up.
    """
    best = PUBLISHED_SLIDES.get(who, DEFAULT_PUBLISHED_SLIDES)
    for w, d, _why, _conf, n in POSTS:
        if w == who and d < day:
            best = max(best, n)
    return best


events = []            # (date, hour, summary)
anchor_days = set()

for who, d, _hour, _why in PINNED:
    anchor_days.add(d)
    # A pinned slot is a hand-placed rotation slot, so it runs the full carousel
    # like any other reshare. The hour field is kept for the record but the
    # frames use STORY_TIMES so every story day looks the same.
    events += frames(who, d, published_slides(who, d), " (pinned)")

for who, d, why, _confirmed, slides in POSTS:
    anchor_days.add(d)
    events.append((d, 9, f"[POST] {who} — {why}"))
    events += frames(who, d, slides, "", post_day=True)

for who, d, why, hr in HOOKS:
    anchor_days.add(d)
    events.append((d, hr, f"[STORY] {who} — {why}"))

# Baseline rotation: strict round-robin so every subject cycles at the same
# interval. Weekdays only, one slot a day. Tue/Wed/Thu are the strongest days
# in the large-sample data (Buffer, 9.6M posts) and weekends the weakest, so
# Mon-Fri covers the best window every week without inventing a rhythm his own
# log has never tested. Anchor days are skipped rather than doubled up — the
# queue does not advance, so nobody is passed over.
# Subjects with nothing published yet: the rotation may not story them before
# their debut, because there is no art to reshare. Subjects already on the grid
# are not listed here even when a second piece is coming (Elle II, Odessa II,
# Olivia II are second portraits of subjects who already have published work).
# Remove a name once its debut has run. Skipping does not lose anyone's turn;
# the queue just reaches them later.
UNPUBLISHED = {"Katrin", "Emma", "Florence", "Samara", "Inde", "Bea"}
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
i = 0
d = START
while d <= END:
    if d.weekday() < 5 and d not in anchor_days:
        for _ in range(len(ROSTER)):
            who = ROSTER[i % len(ROSTER)]
            i += 1
            if eligible(who, d):
                # A reshare runs the whole carousel, one native frame per image,
                # so Jackson is told which slide to put up and when.
                events += frames(who, d, published_slides(who, d), " (rotation)")
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
# An event on the calendar is not a reminder. Jackson was missing posts by
# thirty minutes to two hours because nothing actually told him. Every event now
# carries an alarm.
#   Jackson, chat 2026-09-28: "they need like a notification five minutes
#   before... five minutes before if it's a reshare, and 30 minutes before if
#   it's a debut, which gives me time to make sure the caption's written."
# A debut needs the longer lead because a caption, credits and tags have to be
# ready before 9am, not at 9am.
ALARM_MINUTES = {"POST": 30, "STORY": 5}

for i, (d, hour, summary) in enumerate(events):
    end_h, end_m = (hour, 15)
    kind = "POST" if summary.startswith("[POST]") else "STORY"
    lead = ALARM_MINUTES[kind]
    out.append(f'\tset ev{i} to make new event at end of events of bc_cal with properties '
               f'{{summary:"{summary}", start date:date "{stamp(d, hour)}", '
               f'end date:date "{stamp(d, end_h, end_m)}"}}')
    out.append(f'\tmake new display alarm at end of display alarms of ev{i} '
               f'with properties {{trigger interval:-{lead}}}')
out += ['', 'end tell', '',
        f'display notification "BrandComposer calendar rebuilt with {len(events)} events." '
        f'with title "Calendar Update Complete"']

with open(OUTPUT, "w", encoding="utf-8") as fh:
    fh.write("\n".join(out) + "\n")
print(f"Built {len(events)} events for {len(ROSTER)} subjects -> {OUTPUT}")
