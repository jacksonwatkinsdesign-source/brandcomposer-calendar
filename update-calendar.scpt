tell application "Calendar"
	set bc_cal to calendar "BrandComposer"
	set rangeStart to date "Thursday, September 3, 2026 12:00:00 AM"
	set rangeEnd to date "Thursday, April 1, 2027 12:00:00 AM"
	delete (every event of bc_cal whose start date is greater than or equal to rangeStart and start date is less than rangeEnd)
	
	set eventCount to 0
	
	-- CONFIRMED POSTS (September 10 and September 24, 2026)
	
	-- September 10, 2026 (Thursday) - Odessa II
	set postDate to date "Thursday, September 10, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[POST] Odessa — Stranger Things S2 momentum", start date:postDate, end date:postDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	set storyDate to date "Thursday, September 10, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Carousel slide 1", start date:storyDate, end date:storyDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	set storyDate to date "Thursday, September 10, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Carousel slide 2", start date:storyDate, end date:storyDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 24, 2026 (Thursday) - Olivia II
	set postDate to date "Thursday, September 24, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[POST] Olivia — Rodrigo Unraveled Tour launch", start date:postDate, end date:postDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	set storyDate to date "Thursday, September 24, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Carousel slide 1", start date:storyDate, end date:storyDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	set storyDate to date "Thursday, September 24, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Carousel slide 2", start date:storyDate, end date:storyDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- ROTATION STORY SLOTS
	
	-- September 3, 2026 (Thursday)
	set slotDate to date "Thursday, September 3, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 4, 2026 (Friday)
	set slotDate to date "Friday, September 4, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 7, 2026 (Monday)
	set slotDate to date "Monday, September 7, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 8, 2026 (Tuesday)
	set slotDate to date "Tuesday, September 8, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 9, 2026 (Wednesday)
	set slotDate to date "Wednesday, September 9, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 11, 2026 (Friday)
	set slotDate to date "Friday, September 11, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 14, 2026 (Monday)
	set slotDate to date "Monday, September 14, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 15, 2026 (Tuesday)
	set slotDate to date "Tuesday, September 15, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 16, 2026 (Wednesday)
	set slotDate to date "Wednesday, September 16, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 17, 2026 (Thursday)
	set slotDate to date "Thursday, September 17, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 18, 2026 (Friday)
	set slotDate to date "Friday, September 18, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 21, 2026 (Monday)
	set slotDate to date "Monday, September 21, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 22, 2026 (Tuesday)
	set slotDate to date "Tuesday, September 22, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 23, 2026 (Wednesday)
	set slotDate to date "Wednesday, September 23, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 28, 2026 (Monday)
	set slotDate to date "Monday, September 28, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 29, 2026 (Tuesday)
	set slotDate to date "Tuesday, September 29, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- September 30, 2026 (Wednesday)
	set slotDate to date "Wednesday, September 30, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 1, 2026 (Thursday)
	set slotDate to date "Thursday, October 1, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 2, 2026 (Friday)
	set slotDate to date "Friday, October 2, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 5, 2026 (Monday)
	set slotDate to date "Monday, October 5, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 6, 2026 (Tuesday)
	set slotDate to date "Tuesday, October 6, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 7, 2026 (Wednesday)
	set slotDate to date "Wednesday, October 7, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 8, 2026 (Thursday)
	set slotDate to date "Thursday, October 8, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 9, 2026 (Friday)
	set slotDate to date "Friday, October 9, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 11, 2026 (Sunday) - TENTPOLE
	set slotDate to date "Sunday, October 11, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — 30th birthday HOOK", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 12, 2026 (Monday)
	set slotDate to date "Monday, October 12, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 13, 2026 (Tuesday)
	set slotDate to date "Tuesday, October 13, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 14, 2026 (Wednesday)
	set slotDate to date "Wednesday, October 14, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 15, 2026 (Thursday)
	set slotDate to date "Thursday, October 15, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 16, 2026 (Friday)
	set slotDate to date "Friday, October 16, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 19, 2026 (Monday)
	set slotDate to date "Monday, October 19, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 20, 2026 (Tuesday)
	set slotDate to date "Tuesday, October 20, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 21, 2026 (Wednesday)
	set slotDate to date "Wednesday, October 21, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 22, 2026 (Thursday)
	set slotDate to date "Thursday, October 22, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 23, 2026 (Friday)
	set slotDate to date "Friday, October 23, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 26, 2026 (Monday)
	set slotDate to date "Monday, October 26, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 27, 2026 (Tuesday)
	set slotDate to date "Tuesday, October 27, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 28, 2026 (Wednesday)
	set slotDate to date "Wednesday, October 28, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 29, 2026 (Thursday)
	set slotDate to date "Thursday, October 29, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- October 30, 2026 (Friday)
	set slotDate to date "Friday, October 30, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 2, 2026 (Monday)
	set slotDate to date "Monday, November 2, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 3, 2026 (Tuesday)
	set slotDate to date "Tuesday, November 3, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 4, 2026 (Wednesday)
	set slotDate to date "Wednesday, November 4, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 5, 2026 (Thursday)
	set slotDate to date "Thursday, November 5, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 6, 2026 (Friday)
	set slotDate to date "Friday, November 6, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 9, 2026 (Monday)
	set slotDate to date "Monday, November 9, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 10, 2026 (Tuesday)
	set slotDate to date "Tuesday, November 10, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 11, 2026 (Wednesday)
	set slotDate to date "Wednesday, November 11, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 12, 2026 (Thursday)
	set slotDate to date "Thursday, November 12, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 13, 2026 (Friday)
	set slotDate to date "Friday, November 13, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 16, 2026 (Monday)
	set slotDate to date "Monday, November 16, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 17, 2026 (Tuesday)
	set slotDate to date "Tuesday, November 17, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 18, 2026 (Wednesday)
	set slotDate to date "Wednesday, November 18, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 19, 2026 (Thursday)
	set slotDate to date "Thursday, November 19, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 20, 2026 (Friday) - TENTPOLE
	set slotDate to date "Friday, November 20, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Hunger Games: Sunrise on the Reaping HOOK", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 23, 2026 (Monday)
	set slotDate to date "Monday, November 23, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 24, 2026 (Tuesday)
	set slotDate to date "Tuesday, November 24, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 25, 2026 (Wednesday)
	set slotDate to date "Wednesday, November 25, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- November 30, 2026 (Monday)
	set slotDate to date "Monday, November 30, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 1, 2026 (Tuesday)
	set slotDate to date "Tuesday, December 1, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 2, 2026 (Wednesday) - TENTPOLE
	set slotDate to date "Wednesday, December 2, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — tour launch HOOK", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 3, 2026 (Thursday)
	set slotDate to date "Thursday, December 3, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 4, 2026 (Friday)
	set slotDate to date "Friday, December 4, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 7, 2026 (Monday)
	set slotDate to date "Monday, December 7, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 8, 2026 (Tuesday)
	set slotDate to date "Tuesday, December 8, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 9, 2026 (Wednesday)
	set slotDate to date "Wednesday, December 9, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 10, 2026 (Thursday)
	set slotDate to date "Thursday, December 10, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 11, 2026 (Friday)
	set slotDate to date "Friday, December 11, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 14, 2026 (Monday)
	set slotDate to date "Monday, December 14, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 15, 2026 (Tuesday)
	set slotDate to date "Tuesday, December 15, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 16, 2026 (Wednesday)
	set slotDate to date "Wednesday, December 16, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 17, 2026 (Thursday)
	set slotDate to date "Thursday, December 17, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 18, 2026 (Friday) - TENTPOLE
	set slotDate to date "Friday, December 18, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Dune: Part Three HOOK", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	set slotDate to date "Friday, December 18, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Dune: Part Three HOOK", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	set slotDate to date "Friday, December 18, 2026 7:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Dune: Part Three HOOK", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 21, 2026 (Monday)
	set slotDate to date "Monday, December 21, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 22, 2026 (Tuesday)
	set slotDate to date "Tuesday, December 22, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 23, 2026 (Wednesday)
	set slotDate to date "Wednesday, December 23, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 28, 2026 (Monday)
	set slotDate to date "Monday, December 28, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 29, 2026 (Tuesday)
	set slotDate to date "Tuesday, December 29, 2026 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- December 30, 2026 (Wednesday)
	set slotDate to date "Wednesday, December 30, 2026 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 4, 2027 (Monday)
	set slotDate to date "Monday, January 4, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 5, 2027 (Tuesday)
	set slotDate to date "Tuesday, January 5, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 6, 2027 (Wednesday)
	set slotDate to date "Wednesday, January 6, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 7, 2027 (Thursday)
	set slotDate to date "Thursday, January 7, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 8, 2027 (Friday)
	set slotDate to date "Friday, January 8, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 11, 2027 (Monday)
	set slotDate to date "Monday, January 11, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 12, 2027 (Tuesday)
	set slotDate to date "Tuesday, January 12, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 13, 2027 (Wednesday)
	set slotDate to date "Wednesday, January 13, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 14, 2027 (Thursday)
	set slotDate to date "Thursday, January 14, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 15, 2027 (Friday)
	set slotDate to date "Friday, January 15, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 18, 2027 (Monday)
	set slotDate to date "Monday, January 18, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 19, 2027 (Tuesday)
	set slotDate to date "Tuesday, January 19, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 20, 2027 (Wednesday)
	set slotDate to date "Wednesday, January 20, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 21, 2027 (Thursday)
	set slotDate to date "Thursday, January 21, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 22, 2027 (Friday)
	set slotDate to date "Friday, January 22, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 25, 2027 (Monday)
	set slotDate to date "Monday, January 25, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 26, 2027 (Tuesday)
	set slotDate to date "Tuesday, January 26, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 27, 2027 (Wednesday)
	set slotDate to date "Wednesday, January 27, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 28, 2027 (Thursday)
	set slotDate to date "Thursday, January 28, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- January 29, 2027 (Friday)
	set slotDate to date "Friday, January 29, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 1, 2027 (Monday)
	set slotDate to date "Monday, February 1, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 2, 2027 (Tuesday)
	set slotDate to date "Tuesday, February 2, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 3, 2027 (Wednesday)
	set slotDate to date "Wednesday, February 3, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 4, 2027 (Thursday)
	set slotDate to date "Thursday, February 4, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 5, 2027 (Friday)
	set slotDate to date "Friday, February 5, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 8, 2027 (Monday)
	set slotDate to date "Monday, February 8, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 9, 2027 (Tuesday)
	set slotDate to date "Tuesday, February 9, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 10, 2027 (Wednesday)
	set slotDate to date "Wednesday, February 10, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 11, 2027 (Thursday)
	set slotDate to date "Thursday, February 11, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 12, 2027 (Friday)
	set slotDate to date "Friday, February 12, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 15, 2027 (Monday)
	set slotDate to date "Monday, February 15, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 16, 2027 (Tuesday)
	set slotDate to date "Tuesday, February 16, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 17, 2027 (Wednesday)
	set slotDate to date "Wednesday, February 17, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 18, 2027 (Thursday)
	set slotDate to date "Thursday, February 18, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 19, 2027 (Friday)
	set slotDate to date "Friday, February 19, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 22, 2027 (Monday)
	set slotDate to date "Monday, February 22, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 23, 2027 (Tuesday)
	set slotDate to date "Tuesday, February 23, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 24, 2027 (Wednesday)
	set slotDate to date "Wednesday, February 24, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 25, 2027 (Thursday)
	set slotDate to date "Thursday, February 25, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- February 26, 2027 (Friday)
	set slotDate to date "Friday, February 26, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 1, 2027 (Monday)
	set slotDate to date "Monday, March 1, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 2, 2027 (Tuesday)
	set slotDate to date "Tuesday, March 2, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 3, 2027 (Wednesday)
	set slotDate to date "Wednesday, March 3, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 4, 2027 (Thursday)
	set slotDate to date "Thursday, March 4, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 5, 2027 (Friday)
	set slotDate to date "Friday, March 5, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 8, 2027 (Monday)
	set slotDate to date "Monday, March 8, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 9, 2027 (Tuesday)
	set slotDate to date "Tuesday, March 9, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 10, 2027 (Wednesday)
	set slotDate to date "Wednesday, March 10, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 11, 2027 (Thursday)
	set slotDate to date "Thursday, March 11, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 12, 2027 (Friday)
	set slotDate to date "Friday, March 12, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 15, 2027 (Monday)
	set slotDate to date "Monday, March 15, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 16, 2027 (Tuesday)
	set slotDate to date "Tuesday, March 16, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 17, 2027 (Wednesday)
	set slotDate to date "Wednesday, March 17, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 18, 2027 (Thursday) - TENTPOLE
	set slotDate to date "Thursday, March 18, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — birthday + Emily in Paris HOOK", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 19, 2027 (Friday) - TENTPOLE
	set slotDate to date "Friday, March 19, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — The Nightingale HOOK", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 22, 2027 (Monday)
	set slotDate to date "Monday, March 22, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 23, 2027 (Tuesday)
	set slotDate to date "Tuesday, March 23, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 24, 2027 (Wednesday)
	set slotDate to date "Wednesday, March 24, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 25, 2027 (Thursday)
	set slotDate to date "Thursday, March 25, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 26, 2027 (Friday)
	set slotDate to date "Friday, March 26, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 29, 2027 (Monday)
	set slotDate to date "Monday, March 29, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 30, 2027 (Tuesday)
	set slotDate to date "Tuesday, March 30, 2027 1:00:00 PM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	-- March 31, 2027 (Wednesday)
	set slotDate to date "Wednesday, March 31, 2027 9:00:00 AM"
	make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — Rotation baseline", start date:slotDate, end date:slotDate + 15 * minutes}
	set eventCount to eventCount + 1
	
	display notification "Successfully created " & eventCount & " events in BrandComposer calendar" with title "Calendar Update Complete"
end tell
