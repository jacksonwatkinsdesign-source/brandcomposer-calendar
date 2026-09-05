tell application "Calendar"
	set bc_cal to calendar "BrandComposer"
	set rangeStart to date "Thursday, September 3, 2026 12:00:00 AM"
	set rangeEnd to date "Thursday, April 1, 2027 12:00:00 AM"
	delete (every event of bc_cal whose start date is greater than or equal to rangeStart and start date is less than rangeEnd)
	
	set eventCount to 0
	
	-- CONFIRMED POSTS (art exists)
	-- Odessa II, 2026-09-10 (Thursday)
	set postDate to date "Thursday, September 10, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[POST] Odessa — Stranger Things S2 momentum", start date:postDate, end date:postDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set storyDate to date "Thursday, September 10, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Carousel slide 1", start date:storyDate, end date:storyDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set storyDate to date "Thursday, September 10, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Carousel slide 2", start date:storyDate, end date:storyDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	-- Olivia II, 2026-09-24 (Thursday)
	set postDate to date "Thursday, September 24, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[POST] Olivia — Rodrigo Unraveled Tour launch", start date:postDate, end date:postDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set storyDate to date "Thursday, September 24, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Carousel slide 1", start date:storyDate, end date:storyDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set storyDate to date "Thursday, September 24, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Carousel slide 2", start date:storyDate, end date:storyDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	-- ROTATION STORY SLOTS
	-- September 2026
	set eventDate to date "Thursday, September 3, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, September 4, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, September 7, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, September 8, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, September 9, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, September 11, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, September 14, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, September 15, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, September 16, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, September 17, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, September 18, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, September 21, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, September 22, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, September 23, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, September 25, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, September 28, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, September 29, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, September 30, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	-- October 2026
	set eventDate to date "Thursday, October 1, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, October 2, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, October 5, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, October 6, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, October 7, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, October 8, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, October 9, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Sunday, October 11, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — 30th birthday HOOK", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, October 12, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, October 13, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, October 14, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, October 15, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, October 16, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, October 19, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, October 20, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, October 21, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, October 22, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, October 23, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, October 26, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, October 27, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, October 28, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, October 29, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, October 30, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	-- November 2026
	set eventDate to date "Monday, November 2, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, November 3, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, November 4, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, November 5, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, November 6, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, November 9, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, November 10, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, November 11, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, November 12, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, November 13, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, November 16, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, November 17, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, November 18, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, November 20, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Hunger Games: Sunrise on the Reaping HOOK", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, November 20, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, November 23, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, November 24, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, November 25, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, November 30, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	-- December 2026
	set eventDate to date "Tuesday, December 1, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, December 2, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — tour launch HOOK", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, December 2, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, December 3, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, December 4, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, December 7, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, December 8, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, December 9, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, December 10, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, December 11, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, December 14, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, December 15, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, December 18, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Dune: Part Three HOOK", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, December 18, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Dune: Part Three HOOK", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, December 18, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Dune: Part Three HOOK", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, December 21, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, December 22, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, December 28, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, December 29, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, December 30, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, December 31, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	-- January 2027
	set eventDate to date "Monday, January 4, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, January 5, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, January 6, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, January 7, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, January 8, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, January 11, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, January 12, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, January 13, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, January 14, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, January 15, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, January 18, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, January 19, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, January 20, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, January 21, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, January 22, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, January 25, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, January 26, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, January 27, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, January 28, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, January 29, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	-- February 2027
	set eventDate to date "Monday, February 1, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, February 2, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, February 3, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, February 4, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, February 5, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, February 8, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, February 9, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, February 10, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, February 11, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, February 12, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, February 15, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, February 16, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, February 17, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, February 18, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, February 19, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, February 22, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, February 23, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, February 24, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, February 25, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	-- March 2027
	set eventDate to date "Monday, March 1, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, March 2, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, March 3, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, March 4, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, March 5, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, March 8, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, March 9, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, March 10, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, March 11, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, March 12, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, March 15, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, March 16, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, March 17, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, March 18, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — birthday + Emily in Paris HOOK", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, March 19, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — The Nightingale HOOK", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, March 22, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, March 23, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, March 24, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Thursday, March 25, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Friday, March 26, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Monday, March 29, 2027 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Tuesday, March 30, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
	set eventDate to date "Wednesday, March 31, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:eventDate, end date:eventDate + (15 * minutes)}
	set eventCount to eventCount + 1
	
end tell

display notification "BrandComposer calendar updated with " & eventCount & " events" with title "Calendar Sync Complete"
