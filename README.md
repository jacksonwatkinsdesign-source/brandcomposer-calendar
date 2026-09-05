# BrandComposer Calendar Automation

Automated 6-month illustration posting calendar (Sept 2026 - March 2027) that syncs across Mac, iPad, and iPhone via the BrandComposer app using native Apple EventKit.

## Files in this repo

- **update-calendar.scpt** — AppleScript that rebuilds the BrandComposer calendar's story slots (clears its date range first, so re-running is safe)
- **com.brandcomposer.calendar.plist** — launchd agent; runs the deploy script Sundays at 08:00
- **deploy-calendar.sh** — pulls the latest script, validates it, applies it to Calendar
- **validate-calendar.py** — enforces the rotation rules; the workflow will not commit a script that fails it
- **README.md** — This file

## Workflow

The calendar updates through this flow:

1. **Claude generates** the AppleScript (update-calendar.scpt) whenever the calendar needs changes
2. **You push** the updated script to this GitHub repo
3. **Your Mac** automatically detects the change and runs the script (via launchd automation)
4. **Calendar updates** sync to BrandComposer calendar (EventKit) across all devices via iCloud

## Installation (One-time setup ~30-45 min)

### Step 1: Pull the repo to your Mac

```bash
git clone https://github.com/jacksonwatkinsdesign-source/brandcomposer-calendar.git
cd brandcomposer-calendar
```

### Step 2: Create the directory structure

```bash
mkdir -p ~/Library/LaunchAgents
```

### Step 3: Edit and install the launchd plist

The plist file needs the full path to update-calendar.scpt. Edit it:

```bash
nano com.brandcomposer.calendar.plist
```

Find the line:
```
<string>INSTALL_PATH/update-calendar.scpt</string>
```

Replace `INSTALL_PATH` with the **absolute full path** to the repo you cloned above. Example:

```
<string>/Users/jackson/brandcomposer-calendar/update-calendar.scpt</string>
```

Save and exit (Ctrl+X, then Y, then Enter).

### Step 4: Install the launchd agent

```bash
cp com.brandcomposer.calendar.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.brandcomposer.calendar.plist
```

### Step 5: Test the setup

Run the script manually to verify it works:

```bash
osascript /path/to/update-calendar.scpt
```

You should see a notification reporting how many events were created.

Verify in Apple Calendar that all events appear in the **BrandComposer** calendar (pink).

### Step 6: Verify launchd is running

```bash
launchctl list | grep brandcomposer
```

You should see:
```
com.brandcomposer.calendar
```

## How to update the calendar

Whenever the calendar needs updating:

1. **I generate** the new AppleScript
2. **You replace** update-calendar.scpt with the new version (same filename)
3. **You commit and push** to GitHub:
   ```bash
   cd brandcomposer-calendar
   git add update-calendar.scpt
   git commit -m "Calendar update: [describe changes]"
   git push
   ```

The launchd agent checks the file every hour and runs automatically when it changes.

## Manual updates (if you want to test)

You can also manually run the script anytime:

```bash
osascript /Users/jackson/brandcomposer-calendar/update-calendar.scpt
```

Check Apple Calendar (Calendar app) to confirm:
- New events appear in **BrandComposer** calendar
- All events sync to iPad and iPhone (via iCloud)

## What the script does

The update-calendar.scpt creates:

- **Story slots** for the 16-subject roster (Sept 2026 - March 2027). The count is whatever the rotation rules produce; it is not a fixed target.
- **Two colors:**
  - **Green (hook events):** Tours, premieres, birthdays — major engagement moments
  - **Graphite (baseline rotation):** Standard 30-day no-repeat rotation subjects
- **Three daily times:**
  - 9:00 AM — Story post
  - 1:00 PM — Grid or carousel slide 2
  - 7:00 PM — Grid story or carousel continuation
- **Carousel rules:** All slides for one subject posted same day (9am, 1pm, 7pm)
- **30-day rotation:** No subject repeats within 30 days
- **Hook descriptions:** Each event includes hook details in the notes field

## Troubleshooting

### Events not appearing in Calendar

1. Verify BrandComposer calendar exists:
   - Open Calendar app → Calendars sidebar → look for "BrandComposer" (pink)
   - If missing, open the BrandComposer app (it creates the calendar automatically)

2. Check script ran:
   ```bash
   tail -f /var/log/brandcomposer-calendar.log
   ```

3. Run script manually:
   ```bash
   osascript /Users/jackson/brandcomposer-calendar/update-calendar.scpt
   ```

### Events not syncing to iPad/iPhone

- iPad/iPhone must be logged into same iCloud account
- BrandComposer app must be open once on each device (to access the calendar)
- Check iCloud Calendar sync: Settings → iCloud → Calendar (toggle off/on)

### launchd not running automatically

Check status:
```bash
launchctl list | grep brandcomposer
```

If not listed, reinstall:
```bash
launchctl load ~/Library/LaunchAgents/com.brandcomposer.calendar.plist
```

Check for errors:
```bash
tail -50 /var/log/brandcomposer-calendar-error.log
```

## Logs

- **Success log:** `/var/log/brandcomposer-calendar.log`
- **Error log:** `/var/log/brandcomposer-calendar-error.log`

View real-time logs:
```bash
tail -f /var/log/brandcomposer-calendar.log
```

## Stopping automation

To pause automatic updates:

```bash
launchctl unload ~/Library/LaunchAgents/com.brandcomposer.calendar.plist
```

To resume:

```bash
launchctl load ~/Library/LaunchAgents/com.brandcomposer.calendar.plist
```

## Questions?

The calendar structure follows these rules:
- **Hook placements:** Locked to confirmed cultural moments (tours, premieres, birthdays)
- **Confirmed posts:** Odessa II (Sept 10), Olivia II (Sept 24) — finished, unpublished art with committed dates. These are the only grid posts the generator may schedule; they are declared in `CONFIRMED POSTS` in the workflow. Roman numerals identify which portrait, not a different person.
- **Baseline rotation:** all 16 roster subjects cycle every 30 days (no repeats within 30 days, no gap over 32 days, no subject dropped)
- **Soft hooks:** Romy Oct 11 (30th birthday), Lily March 18 (38th birthday + Emily in Paris S6)
- **Extended windows:** Gracie Abrams tour (Dec 2 - May 28), Olivia Rodrigo tour (Sept 25 - May 10) support multi-week engagement angles

All 16 roster subjects appear across the full 6-month range: Karlie, Núria, Paula, Kate Bartlett, Erin, Amelie, Lily Collins, Renate, Rebecca, Gracie Abrams, Zendaya, Romy, Elle, Anya, Odessa, Olivia.

Every generated script is checked by `validate-calendar.py` before it is committed. A run that drops a subject, opens a gap over 32 days, invents a post, or mislabels a weekday fails and the previous script is kept.

---

Generated: September 2026  
Calendar covers: Sept 2026 - March 2027  
Sync method: Apple EventKit → BrandComposer calendar → iCloud → All devices
