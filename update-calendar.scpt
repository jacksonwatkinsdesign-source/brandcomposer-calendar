-- BrandComposer Calendar Update Script
-- This script creates all illustration posting events in the BrandComposer calendar
-- Usage: osascript update-calendar.scpt

use AppleScript version "2.4"
use scripting additions
use framework "Foundation"

-- Get the current user's calendar store
set calendarApp to application "Calendar"
tell calendarApp
	-- Get or create BrandComposer calendar
	set brandComposerCalendar to calendar "BrandComposer"
end tell

-- Helper function to create an event
on createEvent(calendarObj, theTitle, startDateTime, endDateTime, theColor, theNotes)
	tell application "Calendar"
		set newEvent to make new event at end of events of calendarObj with properties ¬
			{summary:theTitle, start date:startDateTime, end date:endDateTime, description:theNotes}

		-- Set color (5 = green/hook, 8 = graphite/baseline)
		tell newEvent
			set color to theColor
		end tell

		return newEvent
	end tell
end createEvent

-- Convert time string to date
on createDatetime(dateString, timeString)
	set dateFormat to "yyyy-MM-dd HH:mm:ss"
	set fullString to dateString & " " & timeString
	set formatter to current application's class "NSDateFormatter"
	set dateFormatter to formatter's new()
	dateFormatter's setDateFormat:dateFormat
	return dateFormatter's dateFromString:fullString
end createDatetime

-- Begin creating events
tell application "Calendar"
	-- SEPTEMBER 2026
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2026-09-03", "13:00:00"), createDatetime("2026-09-03", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Núria — Rotation baseline", createDatetime("2026-09-04", "13:00:00"), createDatetime("2026-09-04", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline", createDatetime("2026-09-05", "13:00:00"), createDatetime("2026-09-05", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2026-09-06", "19:00:00"), createDatetime("2026-09-06", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2026-09-09", "19:00:00"), createDatetime("2026-09-09", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[POST] Odessa II — Debut carousel, Stranger Things S2 momentum", createDatetime("2026-09-10", "09:00:00"), createDatetime("2026-09-10", "09:15:00"), 5, "DEBUT: Odessa II (2-slide carousel). Stranger Things: Tales from '85 Season 2 momentum. All slides same day (9am, 1pm, 7pm).")
	createEvent(brandComposerCalendar, "[STORY] Odessa II Slide 2 — Carousel continuation", createDatetime("2026-09-10", "13:00:00"), createDatetime("2026-09-10", "13:15:00"), 5, "Carousel slide 2 of 2. Part of Odessa II debut.")
	createEvent(brandComposerCalendar, "[STORY] Odessa II Grid post — Debut carousel", createDatetime("2026-09-10", "19:00:00"), createDatetime("2026-09-10", "19:15:00"), 5, "Grid post story. Part of Odessa II debut.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2026-09-11", "13:00:00"), createDatetime("2026-09-11", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Lily Collins — Rotation baseline", createDatetime("2026-09-12", "13:00:00"), createDatetime("2026-09-12", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2026-09-13", "19:00:00"), createDatetime("2026-09-13", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Rotation baseline", createDatetime("2026-09-16", "19:00:00"), createDatetime("2026-09-16", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Stranger Things: Tales from '85 S2 Premiere", createDatetime("2026-09-17", "13:00:00"), createDatetime("2026-09-17", "13:15:00"), 5, "HOOK: Stranger Things: Tales from '85 Season 2 Premiere (Sept 17, 2026). Reshare tied to premiere day.")
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline", createDatetime("2026-09-18", "13:00:00"), createDatetime("2026-09-18", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2026-09-19", "13:00:00"), createDatetime("2026-09-19", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2026-09-20", "19:00:00"), createDatetime("2026-09-20", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Elle — Rotation baseline", createDatetime("2026-09-23", "19:00:00"), createDatetime("2026-09-23", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[POST] Olivia II — Debut carousel, Rodrigo Unraveled Tour launch (9/25)", createDatetime("2026-09-24", "09:00:00"), createDatetime("2026-09-24", "09:15:00"), 5, "DEBUT: Olivia II (2-slide carousel). Olivia Rodrigo Unraveled Tour launches Sept 25. All slides same day (9am, 1pm, 7pm).")
	createEvent(brandComposerCalendar, "[STORY] Olivia II Slide 2 — Carousel continuation", createDatetime("2026-09-24", "13:00:00"), createDatetime("2026-09-24", "13:15:00"), 5, "Carousel slide 2 of 2. Part of Olivia II debut.")
	createEvent(brandComposerCalendar, "[STORY] Olivia II Grid post — Debut carousel", createDatetime("2026-09-24", "19:00:00"), createDatetime("2026-09-24", "19:15:00"), 5, "Grid post story. Part of Olivia II debut.")
	createEvent(brandComposerCalendar, "EXTERNAL HOOK: Olivia Rodrigo Unraveled Tour begins Hartford", createDatetime("2026-09-25", "09:00:00"), createDatetime("2026-09-25", "17:00:00"), 5, "Tour launch date. 86-date world tour Sept 25, 2026 - May 10, 2027. Supports Olivia II debut momentum.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2026-09-26", "13:00:00"), createDatetime("2026-09-26", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline (30-day reset from 9/3)", createDatetime("2026-09-27", "19:00:00"), createDatetime("2026-09-27", "19:15:00"), 8, "30-day rotation baseline. Restarting 30-day cycle from 9/3.")
	createEvent(brandComposerCalendar, "[STORY] Núria — Rotation baseline", createDatetime("2026-09-30", "19:00:00"), createDatetime("2026-09-30", "19:15:00"), 8, "30-day rotation baseline. No hook.")

	-- OCTOBER 2026
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline", createDatetime("2026-10-01", "13:00:00"), createDatetime("2026-10-01", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2026-10-02", "13:00:00"), createDatetime("2026-10-02", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2026-10-03", "13:00:00"), createDatetime("2026-10-03", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2026-10-06", "19:00:00"), createDatetime("2026-10-06", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Lily Collins — Rotation baseline", createDatetime("2026-10-07", "19:00:00"), createDatetime("2026-10-07", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2026-10-08", "13:00:00"), createDatetime("2026-10-08", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Rotation baseline", createDatetime("2026-10-09", "13:00:00"), createDatetime("2026-10-09", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline", createDatetime("2026-10-10", "13:00:00"), createDatetime("2026-10-10", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Romy Nassar — 30th Birthday", createDatetime("2026-10-11", "13:00:00"), createDatetime("2026-10-11", "13:15:00"), 5, "SOFT HOOK: Romy Nassar 30th birthday (born Oct 11, 1996). Birthday engagement angle.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2026-10-14", "19:00:00"), createDatetime("2026-10-14", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Elle — Rotation baseline", createDatetime("2026-10-15", "13:00:00"), createDatetime("2026-10-15", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2026-10-16", "13:00:00"), createDatetime("2026-10-16", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Rotation baseline (30-day reset from 9/17)", createDatetime("2026-10-17", "13:00:00"), createDatetime("2026-10-17", "13:15:00"), 8, "30-day rotation baseline. Restarting 30-day cycle from 9/17.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2026-10-20", "19:00:00"), createDatetime("2026-10-20", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline (30-day reset from 10/1)", createDatetime("2026-10-21", "19:00:00"), createDatetime("2026-10-21", "19:15:00"), 8, "30-day rotation baseline. Restarting 30-day cycle from 10/1.")
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2026-10-22", "13:00:00"), createDatetime("2026-10-22", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2026-10-23", "13:00:00"), createDatetime("2026-10-23", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2026-10-24", "13:00:00"), createDatetime("2026-10-24", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Lily Collins — Rotation baseline", createDatetime("2026-10-27", "19:00:00"), createDatetime("2026-10-27", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2026-10-28", "19:00:00"), createDatetime("2026-10-28", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Rotation baseline", createDatetime("2026-10-29", "13:00:00"), createDatetime("2026-10-29", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline", createDatetime("2026-10-30", "13:00:00"), createDatetime("2026-10-30", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2026-10-31", "13:00:00"), createDatetime("2026-10-31", "13:15:00"), 8, "30-day rotation baseline. No hook.")

	-- NOVEMBER 2026
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2026-11-03", "19:00:00"), createDatetime("2026-11-03", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Elle — Rotation baseline", createDatetime("2026-11-04", "13:00:00"), createDatetime("2026-11-04", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2026-11-05", "13:00:00"), createDatetime("2026-11-05", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Rotation baseline", createDatetime("2026-11-06", "13:00:00"), createDatetime("2026-11-06", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2026-11-09", "19:00:00"), createDatetime("2026-11-09", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline", createDatetime("2026-11-10", "19:00:00"), createDatetime("2026-11-10", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2026-11-11", "13:00:00"), createDatetime("2026-11-11", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2026-11-12", "13:00:00"), createDatetime("2026-11-12", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2026-11-13", "13:00:00"), createDatetime("2026-11-13", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Lily Collins — Rotation baseline", createDatetime("2026-11-16", "19:00:00"), createDatetime("2026-11-16", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2026-11-17", "19:00:00"), createDatetime("2026-11-17", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Rotation baseline", createDatetime("2026-11-18", "13:00:00"), createDatetime("2026-11-18", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline", createDatetime("2026-11-19", "13:00:00"), createDatetime("2026-11-19", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Elle — The Hunger Games: Sunrise on the Reaping (theatrical release)", createDatetime("2026-11-20", "13:00:00"), createDatetime("2026-11-20", "13:15:00"), 5, "HOOK: The Hunger Games: Sunrise on the Reaping (theatrical release, Nov 20, 2026).")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2026-11-23", "19:00:00"), createDatetime("2026-11-23", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2026-11-24", "19:00:00"), createDatetime("2026-11-24", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2026-11-25", "13:00:00"), createDatetime("2026-11-25", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Rotation baseline", createDatetime("2026-11-26", "13:00:00"), createDatetime("2026-11-26", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2026-11-27", "13:00:00"), createDatetime("2026-11-27", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline", createDatetime("2026-11-30", "19:00:00"), createDatetime("2026-11-30", "19:15:00"), 8, "30-day rotation baseline. No hook.")

	-- DECEMBER 2026
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2026-12-01", "19:00:00"), createDatetime("2026-12-01", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Gracie Abrams Look at My Life Tour launches (Dec 2-May 28)", createDatetime("2026-12-02", "13:00:00"), createDatetime("2026-12-02", "13:15:00"), 5, "HOOK: Gracie Abrams Look at My Life Tour launches Dec 2, 2026 (64 dates, North America + Europe).")
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2026-12-03", "13:00:00"), createDatetime("2026-12-03", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2026-12-04", "13:00:00"), createDatetime("2026-12-04", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Lily Collins — Rotation baseline", createDatetime("2026-12-07", "19:00:00"), createDatetime("2026-12-07", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2026-12-08", "19:00:00"), createDatetime("2026-12-08", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Rotation baseline", createDatetime("2026-12-09", "13:00:00"), createDatetime("2026-12-09", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2026-12-10", "13:00:00"), createDatetime("2026-12-10", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2026-12-11", "13:00:00"), createDatetime("2026-12-11", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2026-12-14", "19:00:00"), createDatetime("2026-12-14", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Rotation baseline (30-day reset from 10/17)", createDatetime("2026-12-15", "19:00:00"), createDatetime("2026-12-15", "19:15:00"), 8, "30-day rotation baseline. Restarting 30-day cycle.")
	createEvent(brandComposerCalendar, "[STORY] Elle — Rotation baseline", createDatetime("2026-12-16", "13:00:00"), createDatetime("2026-12-16", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2026-12-17", "13:00:00"), createDatetime("2026-12-17", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Dune: Part Three (theatrical release)", createDatetime("2026-12-18", "09:00:00"), createDatetime("2026-12-18", "09:15:00"), 5, "HOOK: Dune: Part Three (theatrical release, Dec 18, 2026).")
	createEvent(brandComposerCalendar, "[STORY] Anya — Dune: Part Three (theatrical release)", createDatetime("2026-12-18", "13:00:00"), createDatetime("2026-12-18", "13:15:00"), 5, "HOOK: Dune: Part Three (theatrical release, Dec 18, 2026).")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Dune: Part Three (supporting, ensemble push)", createDatetime("2026-12-18", "19:00:00"), createDatetime("2026-12-18", "19:15:00"), 5, "HOOK: Dune: Part Three (supporting role, ensemble push).")
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline", createDatetime("2026-12-19", "19:00:00"), createDatetime("2026-12-19", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2026-12-22", "19:00:00"), createDatetime("2026-12-22", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2026-12-23", "13:00:00"), createDatetime("2026-12-23", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2026-12-24", "13:00:00"), createDatetime("2026-12-24", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Lily Collins — Rotation baseline (tour continues)", createDatetime("2026-12-28", "13:00:00"), createDatetime("2026-12-28", "13:15:00"), 8, "30-day rotation baseline. Tour continues.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2026-12-29", "19:00:00"), createDatetime("2026-12-29", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline (tour continues)", createDatetime("2026-12-30", "13:00:00"), createDatetime("2026-12-30", "13:15:00"), 8, "30-day rotation baseline. Tour continues.")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2026-12-31", "13:00:00"), createDatetime("2026-12-31", "13:15:00"), 8, "30-day rotation baseline. No hook.")

	-- JANUARY 2027
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline (tour continues)", createDatetime("2027-01-02", "13:00:00"), createDatetime("2027-01-02", "13:15:00"), 8, "30-day rotation baseline. Tour continues.")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2027-01-03", "13:00:00"), createDatetime("2027-01-03", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2027-01-04", "13:00:00"), createDatetime("2027-01-04", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2027-01-07", "19:00:00"), createDatetime("2027-01-07", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Rotation baseline", createDatetime("2027-01-08", "19:00:00"), createDatetime("2027-01-08", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Elle — Rotation baseline", createDatetime("2027-01-09", "13:00:00"), createDatetime("2027-01-09", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2027-01-10", "13:00:00"), createDatetime("2027-01-10", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline", createDatetime("2027-01-11", "13:00:00"), createDatetime("2027-01-11", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2027-01-14", "19:00:00"), createDatetime("2027-01-14", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2027-01-15", "19:00:00"), createDatetime("2027-01-15", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2027-01-16", "13:00:00"), createDatetime("2027-01-16", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2027-01-17", "13:00:00"), createDatetime("2027-01-17", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Rotation baseline", createDatetime("2027-01-18", "19:00:00"), createDatetime("2027-01-18", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline (tour continues)", createDatetime("2027-01-19", "13:00:00"), createDatetime("2027-01-19", "13:15:00"), 8, "30-day rotation baseline. Tour continues.")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2027-01-20", "13:00:00"), createDatetime("2027-01-20", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2027-01-21", "13:00:00"), createDatetime("2027-01-21", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2027-01-24", "19:00:00"), createDatetime("2027-01-24", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Rotation baseline", createDatetime("2027-01-25", "19:00:00"), createDatetime("2027-01-25", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Elle — Rotation baseline", createDatetime("2027-01-26", "13:00:00"), createDatetime("2027-01-26", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2027-01-27", "13:00:00"), createDatetime("2027-01-27", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline", createDatetime("2027-01-28", "13:00:00"), createDatetime("2027-01-28", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2027-01-31", "13:00:00"), createDatetime("2027-01-31", "13:15:00"), 8, "30-day rotation baseline. No hook.")

	-- FEBRUARY 2027
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2027-02-01", "19:00:00"), createDatetime("2027-02-01", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2027-02-02", "19:00:00"), createDatetime("2027-02-02", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Lily Collins — Rotation baseline", createDatetime("2027-02-03", "13:00:00"), createDatetime("2027-02-03", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2027-02-04", "13:00:00"), createDatetime("2027-02-04", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Rotation baseline", createDatetime("2027-02-07", "19:00:00"), createDatetime("2027-02-07", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline (tour continues)", createDatetime("2027-02-08", "19:00:00"), createDatetime("2027-02-08", "19:15:00"), 8, "30-day rotation baseline. Tour continues.")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2027-02-09", "13:00:00"), createDatetime("2027-02-09", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2027-02-10", "13:00:00"), createDatetime("2027-02-10", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2027-02-11", "13:00:00"), createDatetime("2027-02-11", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Rotation baseline", createDatetime("2027-02-14", "19:00:00"), createDatetime("2027-02-14", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Elle — Rotation baseline", createDatetime("2027-02-15", "19:00:00"), createDatetime("2027-02-15", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2027-02-16", "13:00:00"), createDatetime("2027-02-16", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline", createDatetime("2027-02-17", "13:00:00"), createDatetime("2027-02-17", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2027-02-18", "13:00:00"), createDatetime("2027-02-18", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2027-02-21", "13:00:00"), createDatetime("2027-02-21", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2027-02-22", "13:00:00"), createDatetime("2027-02-22", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2027-02-24", "13:00:00"), createDatetime("2027-02-24", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Rotation baseline", createDatetime("2027-02-28", "19:00:00"), createDatetime("2027-02-28", "19:15:00"), 8, "30-day rotation baseline. No hook.")

	-- MARCH 2027
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline (tour continues)", createDatetime("2027-03-02", "13:00:00"), createDatetime("2027-03-02", "13:15:00"), 8, "30-day rotation baseline. Tour continues.")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2027-03-03", "13:00:00"), createDatetime("2027-03-03", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2027-03-04", "13:00:00"), createDatetime("2027-03-04", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2027-03-07", "19:00:00"), createDatetime("2027-03-07", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Rotation baseline", createDatetime("2027-03-08", "19:00:00"), createDatetime("2027-03-08", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Elle — Rotation baseline", createDatetime("2027-03-09", "13:00:00"), createDatetime("2027-03-09", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2027-03-10", "13:00:00"), createDatetime("2027-03-10", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Paula — Rotation baseline", createDatetime("2027-03-11", "13:00:00"), createDatetime("2027-03-11", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Kate Bartlett — Rotation baseline", createDatetime("2027-03-14", "19:00:00"), createDatetime("2027-03-14", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Erin — Rotation baseline", createDatetime("2027-03-15", "19:00:00"), createDatetime("2027-03-15", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Amelie — Rotation baseline", createDatetime("2027-03-16", "13:00:00"), createDatetime("2027-03-16", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Renate — Rotation baseline", createDatetime("2027-03-17", "13:00:00"), createDatetime("2027-03-17", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Lily Collins — Rotation baseline + Emily in Paris S6 momentum", createDatetime("2027-03-18", "13:00:00"), createDatetime("2027-03-18", "13:15:00"), 5, "SOFT HOOK: Lily Collins 38th birthday + Emily in Paris S6 tie.")
	createEvent(brandComposerCalendar, "[STORY] Elle — The Nightingale (theatrical release, co-star Dakota)", createDatetime("2027-03-19", "13:00:00"), createDatetime("2027-03-19", "13:15:00"), 5, "HOOK: The Nightingale (theatrical release, March 19, 2027).")
	createEvent(brandComposerCalendar, "[STORY] Rebecca — Rotation baseline", createDatetime("2027-03-22", "19:00:00"), createDatetime("2027-03-22", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Gracie Abrams — Rotation baseline (tour winding down, ends May 28)", createDatetime("2027-03-23", "13:00:00"), createDatetime("2027-03-23", "13:15:00"), 8, "30-day rotation baseline. Tour winding down.")
	createEvent(brandComposerCalendar, "[STORY] Romy — Rotation baseline", createDatetime("2027-03-24", "13:00:00"), createDatetime("2027-03-24", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Zendaya — Rotation baseline", createDatetime("2027-03-25", "13:00:00"), createDatetime("2027-03-25", "13:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Anya — Rotation baseline", createDatetime("2027-03-28", "19:00:00"), createDatetime("2027-03-28", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Odessa — Rotation baseline", createDatetime("2027-03-29", "19:00:00"), createDatetime("2027-03-29", "19:15:00"), 8, "30-day rotation baseline. No hook.")
	createEvent(brandComposerCalendar, "[STORY] Elle — Rotation baseline (30-day reset from 3/19)", createDatetime("2027-03-30", "13:00:00"), createDatetime("2027-03-30", "13:15:00"), 8, "30-day rotation baseline. Restarting 30-day cycle from 3/19.")
	createEvent(brandComposerCalendar, "[STORY] Karlie — Rotation baseline", createDatetime("2027-03-31", "13:00:00"), createDatetime("2027-03-31", "13:15:00"), 8, "30-day rotation baseline. No hook.")

end tell

display notification "BrandComposer calendar updated successfully with all 180 events!" with title "Calendar Update Complete"
