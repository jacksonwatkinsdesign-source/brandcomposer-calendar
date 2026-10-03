tell application "Calendar"
	set bc_cal to calendar "BrandComposer"
	set rangeStart to date "Saturday, October 3, 2026 12:00:00 AM"
	set rangeEnd to date "Thursday, April 1, 2027 12:00:00 AM"
	delete (every event of bc_cal whose start date is greater than or equal to rangeStart and start date is less than rangeEnd)

	set ev0 to make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — The image (rotation)", start date:date "Monday, October 5, 2026 1:00:00 PM", end date:date "Monday, October 5, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev0 with properties {trigger interval:-5}
	set ev1 to make new event at end of events of bc_cal with properties {summary:"[POST] Olivia — Olivia II debut carousel, Australian tour leg opens Oct 5", start date:date "Tuesday, October 6, 2026 9:00:00 AM", end date:date "Tuesday, October 6, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev1 with properties {trigger interval:-30}
	set ev2 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 1", start date:date "Tuesday, October 6, 2026 9:00:00 AM", end date:date "Tuesday, October 6, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev2 with properties {trigger interval:-5}
	set ev3 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 2", start date:date "Tuesday, October 6, 2026 1:00:00 PM", end date:date "Tuesday, October 6, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev3 with properties {trigger interval:-5}
	set ev4 to make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — The image (rotation)", start date:date "Wednesday, October 7, 2026 1:00:00 PM", end date:date "Wednesday, October 7, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev4 with properties {trigger interval:-5}
	set ev5 to make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — The image (rotation)", start date:date "Thursday, October 8, 2026 1:00:00 PM", end date:date "Thursday, October 8, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev5 with properties {trigger interval:-5}
	set ev6 to make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — The image (rotation)", start date:date "Friday, October 9, 2026 1:00:00 PM", end date:date "Friday, October 9, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev6 with properties {trigger interval:-5}
	set ev7 to make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — 30th birthday HOOK", start date:date "Sunday, October 11, 2026 1:00:00 PM", end date:date "Sunday, October 11, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev7 with properties {trigger interval:-5}
	set ev8 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 1 (rotation)", start date:date "Monday, October 12, 2026 1:00:00 PM", end date:date "Monday, October 12, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev8 with properties {trigger interval:-5}
	set ev9 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 2 (rotation)", start date:date "Monday, October 12, 2026 7:00:00 PM", end date:date "Monday, October 12, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev9 with properties {trigger interval:-5}
	set ev10 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 3 (rotation)", start date:date "Monday, October 12, 2026 9:00:00 PM", end date:date "Monday, October 12, 2026 9:15:00 PM"}
	make new display alarm at end of display alarms of ev10 with properties {trigger interval:-5}
	set ev11 to make new event at end of events of bc_cal with properties {summary:"[POST] Bea — Debut carousel, eve of her Atlanta arena date — LOCAL HOOK TEST", start date:date "Tuesday, October 13, 2026 9:00:00 AM", end date:date "Tuesday, October 13, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev11 with properties {trigger interval:-30}
	set ev12 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 1", start date:date "Tuesday, October 13, 2026 9:00:00 AM", end date:date "Tuesday, October 13, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev12 with properties {trigger interval:-5}
	set ev13 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 2", start date:date "Tuesday, October 13, 2026 1:00:00 PM", end date:date "Tuesday, October 13, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev13 with properties {trigger interval:-5}
	set ev14 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 3", start date:date "Tuesday, October 13, 2026 7:00:00 PM", end date:date "Tuesday, October 13, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev14 with properties {trigger interval:-5}
	set ev15 to make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — The image (rotation)", start date:date "Wednesday, October 14, 2026 1:00:00 PM", end date:date "Wednesday, October 14, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev15 with properties {trigger interval:-5}
	set ev16 to make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — The image (rotation)", start date:date "Thursday, October 15, 2026 1:00:00 PM", end date:date "Thursday, October 15, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev16 with properties {trigger interval:-5}
	set ev17 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — The image (rotation)", start date:date "Friday, October 16, 2026 1:00:00 PM", end date:date "Friday, October 16, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev17 with properties {trigger interval:-5}
	set ev18 to make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — 43rd birthday HOOK", start date:date "Monday, October 19, 2026 1:00:00 PM", end date:date "Monday, October 19, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev18 with properties {trigger interval:-5}
	set ev19 to make new event at end of events of bc_cal with properties {summary:"[POST] Odessa — Debut carousel — Stranger Things S2 hook EXPIRED (aired 17 Sep), treat as hookless", start date:date "Tuesday, October 20, 2026 9:00:00 AM", end date:date "Tuesday, October 20, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev19 with properties {trigger interval:-30}
	set ev20 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 1", start date:date "Tuesday, October 20, 2026 9:00:00 AM", end date:date "Tuesday, October 20, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev20 with properties {trigger interval:-5}
	set ev21 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 2", start date:date "Tuesday, October 20, 2026 1:00:00 PM", end date:date "Tuesday, October 20, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev21 with properties {trigger interval:-5}
	set ev22 to make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — The image (rotation)", start date:date "Wednesday, October 21, 2026 1:00:00 PM", end date:date "Wednesday, October 21, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev22 with properties {trigger interval:-5}
	set ev23 to make new event at end of events of bc_cal with properties {summary:"[STORY] Faith Ordway — The image (rotation)", start date:date "Thursday, October 22, 2026 1:00:00 PM", end date:date "Thursday, October 22, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev23 with properties {trigger interval:-5}
	set ev24 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 1 (rotation)", start date:date "Friday, October 23, 2026 1:00:00 PM", end date:date "Friday, October 23, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev24 with properties {trigger interval:-5}
	set ev25 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 2 (rotation)", start date:date "Friday, October 23, 2026 7:00:00 PM", end date:date "Friday, October 23, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev25 with properties {trigger interval:-5}
	set ev26 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 1 (rotation)", start date:date "Monday, October 26, 2026 1:00:00 PM", end date:date "Monday, October 26, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev26 with properties {trigger interval:-5}
	set ev27 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 2 (rotation)", start date:date "Monday, October 26, 2026 7:00:00 PM", end date:date "Monday, October 26, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev27 with properties {trigger interval:-5}
	set ev28 to make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — The image (rotation)", start date:date "Tuesday, October 27, 2026 1:00:00 PM", end date:date "Tuesday, October 27, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev28 with properties {trigger interval:-5}
	set ev29 to make new event at end of events of bc_cal with properties {summary:"[POST] Samara — Debut carousel, no hook in window — first free week after the October run", start date:date "Wednesday, October 28, 2026 9:00:00 AM", end date:date "Wednesday, October 28, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev29 with properties {trigger interval:-30}
	set ev30 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 1", start date:date "Wednesday, October 28, 2026 9:00:00 AM", end date:date "Wednesday, October 28, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev30 with properties {trigger interval:-5}
	set ev31 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 2", start date:date "Wednesday, October 28, 2026 1:00:00 PM", end date:date "Wednesday, October 28, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev31 with properties {trigger interval:-5}
	set ev32 to make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — The image (rotation)", start date:date "Thursday, October 29, 2026 1:00:00 PM", end date:date "Thursday, October 29, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev32 with properties {trigger interval:-5}
	set ev33 to make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — The image (rotation)", start date:date "Friday, October 30, 2026 1:00:00 PM", end date:date "Friday, October 30, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev33 with properties {trigger interval:-5}
	set ev34 to make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — The image (rotation)", start date:date "Monday, November 2, 2026 1:00:00 PM", end date:date "Monday, November 2, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev34 with properties {trigger interval:-5}
	set ev35 to make new event at end of events of bc_cal with properties {summary:"[POST] Inde — Debut carousel, riding the SNL Halloween episode she hosted 31 Oct", start date:date "Tuesday, November 3, 2026 9:00:00 AM", end date:date "Tuesday, November 3, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev35 with properties {trigger interval:-30}
	set ev36 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 1", start date:date "Tuesday, November 3, 2026 9:00:00 AM", end date:date "Tuesday, November 3, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev36 with properties {trigger interval:-5}
	set ev37 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 2", start date:date "Tuesday, November 3, 2026 1:00:00 PM", end date:date "Tuesday, November 3, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev37 with properties {trigger interval:-5}
	set ev38 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 3", start date:date "Tuesday, November 3, 2026 7:00:00 PM", end date:date "Tuesday, November 3, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev38 with properties {trigger interval:-5}
	set ev39 to make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — The image (rotation)", start date:date "Wednesday, November 4, 2026 1:00:00 PM", end date:date "Wednesday, November 4, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev39 with properties {trigger interval:-5}
	set ev40 to make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — The image (rotation)", start date:date "Thursday, November 5, 2026 1:00:00 PM", end date:date "Thursday, November 5, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev40 with properties {trigger interval:-5}
	set ev41 to make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — The image (rotation)", start date:date "Friday, November 6, 2026 1:00:00 PM", end date:date "Friday, November 6, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev41 with properties {trigger interval:-5}
	set ev42 to make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — The image (rotation)", start date:date "Monday, November 9, 2026 1:00:00 PM", end date:date "Monday, November 9, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev42 with properties {trigger interval:-5}
	set ev43 to make new event at end of events of bc_cal with properties {summary:"[POST] Katrin — Debut carousel, no hook — placed to even the run", start date:date "Tuesday, November 10, 2026 9:00:00 AM", end date:date "Tuesday, November 10, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev43 with properties {trigger interval:-30}
	set ev44 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 1", start date:date "Tuesday, November 10, 2026 9:00:00 AM", end date:date "Tuesday, November 10, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev44 with properties {trigger interval:-5}
	set ev45 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 2", start date:date "Tuesday, November 10, 2026 1:00:00 PM", end date:date "Tuesday, November 10, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev45 with properties {trigger interval:-5}
	set ev46 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 3", start date:date "Tuesday, November 10, 2026 7:00:00 PM", end date:date "Tuesday, November 10, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev46 with properties {trigger interval:-5}
	set ev47 to make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — The image (rotation)", start date:date "Wednesday, November 11, 2026 1:00:00 PM", end date:date "Wednesday, November 11, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev47 with properties {trigger interval:-5}
	set ev48 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 1 (rotation)", start date:date "Thursday, November 12, 2026 1:00:00 PM", end date:date "Thursday, November 12, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev48 with properties {trigger interval:-5}
	set ev49 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 2 (rotation)", start date:date "Thursday, November 12, 2026 7:00:00 PM", end date:date "Thursday, November 12, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev49 with properties {trigger interval:-5}
	set ev50 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 3 (rotation)", start date:date "Thursday, November 12, 2026 9:00:00 PM", end date:date "Thursday, November 12, 2026 9:15:00 PM"}
	make new display alarm at end of display alarms of ev50 with properties {trigger interval:-5}
	set ev51 to make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — The image (rotation)", start date:date "Friday, November 13, 2026 1:00:00 PM", end date:date "Friday, November 13, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev51 with properties {trigger interval:-5}
	set ev52 to make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — The image (rotation)", start date:date "Monday, November 16, 2026 1:00:00 PM", end date:date "Monday, November 16, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev52 with properties {trigger interval:-5}
	set ev53 to make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — The image (rotation)", start date:date "Tuesday, November 17, 2026 1:00:00 PM", end date:date "Tuesday, November 17, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev53 with properties {trigger interval:-5}
	set ev54 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 1 (rotation)", start date:date "Wednesday, November 18, 2026 1:00:00 PM", end date:date "Wednesday, November 18, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev54 with properties {trigger interval:-5}
	set ev55 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 2 (rotation)", start date:date "Wednesday, November 18, 2026 7:00:00 PM", end date:date "Wednesday, November 18, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev55 with properties {trigger interval:-5}
	set ev56 to make new event at end of events of bc_cal with properties {summary:"[POST] Elle — Elle II debut carousel, Hunger Games eve", start date:date "Thursday, November 19, 2026 9:00:00 AM", end date:date "Thursday, November 19, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev56 with properties {trigger interval:-30}
	set ev57 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 1", start date:date "Thursday, November 19, 2026 9:00:00 AM", end date:date "Thursday, November 19, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev57 with properties {trigger interval:-5}
	set ev58 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 2", start date:date "Thursday, November 19, 2026 1:00:00 PM", end date:date "Thursday, November 19, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev58 with properties {trigger interval:-5}
	set ev59 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 3", start date:date "Thursday, November 19, 2026 7:00:00 PM", end date:date "Thursday, November 19, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev59 with properties {trigger interval:-5}
	set ev60 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Hunger Games: Sunrise on the Reaping HOOK", start date:date "Friday, November 20, 2026 1:00:00 PM", end date:date "Friday, November 20, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev60 with properties {trigger interval:-5}
	set ev61 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 1 (rotation)", start date:date "Monday, November 23, 2026 1:00:00 PM", end date:date "Monday, November 23, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev61 with properties {trigger interval:-5}
	set ev62 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 2 (rotation)", start date:date "Monday, November 23, 2026 7:00:00 PM", end date:date "Monday, November 23, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev62 with properties {trigger interval:-5}
	set ev63 to make new event at end of events of bc_cal with properties {summary:"[STORY] Faith Ordway — The image (rotation)", start date:date "Tuesday, November 24, 2026 1:00:00 PM", end date:date "Tuesday, November 24, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev63 with properties {trigger interval:-5}
	set ev64 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 1 (rotation)", start date:date "Wednesday, November 25, 2026 1:00:00 PM", end date:date "Wednesday, November 25, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev64 with properties {trigger interval:-5}
	set ev65 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 2 (rotation)", start date:date "Wednesday, November 25, 2026 7:00:00 PM", end date:date "Wednesday, November 25, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev65 with properties {trigger interval:-5}
	set ev66 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 1 (rotation)", start date:date "Thursday, November 26, 2026 1:00:00 PM", end date:date "Thursday, November 26, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev66 with properties {trigger interval:-5}
	set ev67 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 2 (rotation)", start date:date "Thursday, November 26, 2026 7:00:00 PM", end date:date "Thursday, November 26, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev67 with properties {trigger interval:-5}
	set ev68 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 1 (rotation)", start date:date "Friday, November 27, 2026 1:00:00 PM", end date:date "Friday, November 27, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev68 with properties {trigger interval:-5}
	set ev69 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 2 (rotation)", start date:date "Friday, November 27, 2026 7:00:00 PM", end date:date "Friday, November 27, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev69 with properties {trigger interval:-5}
	set ev70 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 3 (rotation)", start date:date "Friday, November 27, 2026 9:00:00 PM", end date:date "Friday, November 27, 2026 9:15:00 PM"}
	make new display alarm at end of display alarms of ev70 with properties {trigger interval:-5}
	set ev71 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 1 (rotation)", start date:date "Monday, November 30, 2026 1:00:00 PM", end date:date "Monday, November 30, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev71 with properties {trigger interval:-5}
	set ev72 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 2 (rotation)", start date:date "Monday, November 30, 2026 7:00:00 PM", end date:date "Monday, November 30, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev72 with properties {trigger interval:-5}
	set ev73 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 3 (rotation)", start date:date "Monday, November 30, 2026 9:00:00 PM", end date:date "Monday, November 30, 2026 9:15:00 PM"}
	make new display alarm at end of display alarms of ev73 with properties {trigger interval:-5}
	set ev74 to make new event at end of events of bc_cal with properties {summary:"[POST] Emma — Debut carousel, no hook — placed to even the run", start date:date "Tuesday, December 1, 2026 9:00:00 AM", end date:date "Tuesday, December 1, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev74 with properties {trigger interval:-30}
	set ev75 to make new event at end of events of bc_cal with properties {summary:"[STORY] Emma — Slide 1", start date:date "Tuesday, December 1, 2026 9:00:00 AM", end date:date "Tuesday, December 1, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev75 with properties {trigger interval:-5}
	set ev76 to make new event at end of events of bc_cal with properties {summary:"[STORY] Emma — Slide 2", start date:date "Tuesday, December 1, 2026 1:00:00 PM", end date:date "Tuesday, December 1, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev76 with properties {trigger interval:-5}
	set ev77 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Tour launch HOOK", start date:date "Wednesday, December 2, 2026 1:00:00 PM", end date:date "Wednesday, December 2, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev77 with properties {trigger interval:-5}
	set ev78 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 1 (rotation)", start date:date "Thursday, December 3, 2026 1:00:00 PM", end date:date "Thursday, December 3, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev78 with properties {trigger interval:-5}
	set ev79 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 2 (rotation)", start date:date "Thursday, December 3, 2026 7:00:00 PM", end date:date "Thursday, December 3, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev79 with properties {trigger interval:-5}
	set ev80 to make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — The image (rotation)", start date:date "Friday, December 4, 2026 1:00:00 PM", end date:date "Friday, December 4, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev80 with properties {trigger interval:-5}
	set ev81 to make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — The image (rotation)", start date:date "Monday, December 7, 2026 1:00:00 PM", end date:date "Monday, December 7, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev81 with properties {trigger interval:-5}
	set ev82 to make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — The image (rotation)", start date:date "Tuesday, December 8, 2026 1:00:00 PM", end date:date "Tuesday, December 8, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev82 with properties {trigger interval:-5}
	set ev83 to make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — The image (rotation)", start date:date "Wednesday, December 9, 2026 1:00:00 PM", end date:date "Wednesday, December 9, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev83 with properties {trigger interval:-5}
	set ev84 to make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — The image (rotation)", start date:date "Thursday, December 10, 2026 1:00:00 PM", end date:date "Thursday, December 10, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev84 with properties {trigger interval:-5}
	set ev85 to make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — The image (rotation)", start date:date "Friday, December 11, 2026 1:00:00 PM", end date:date "Friday, December 11, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev85 with properties {trigger interval:-5}
	set ev86 to make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — The image (rotation)", start date:date "Monday, December 14, 2026 1:00:00 PM", end date:date "Monday, December 14, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev86 with properties {trigger interval:-5}
	set ev87 to make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — The image (rotation)", start date:date "Tuesday, December 15, 2026 1:00:00 PM", end date:date "Tuesday, December 15, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev87 with properties {trigger interval:-5}
	set ev88 to make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — The image (rotation)", start date:date "Wednesday, December 16, 2026 1:00:00 PM", end date:date "Wednesday, December 16, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev88 with properties {trigger interval:-5}
	set ev89 to make new event at end of events of bc_cal with properties {summary:"[POST] Florence — Florence P debut carousel, eve of Dune: Part Three and Avengers: Doomsday", start date:date "Thursday, December 17, 2026 9:00:00 AM", end date:date "Thursday, December 17, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev89 with properties {trigger interval:-30}
	set ev90 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — Slide 1", start date:date "Thursday, December 17, 2026 9:00:00 AM", end date:date "Thursday, December 17, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev90 with properties {trigger interval:-5}
	set ev91 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — Slide 2", start date:date "Thursday, December 17, 2026 1:00:00 PM", end date:date "Thursday, December 17, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev91 with properties {trigger interval:-5}
	set ev92 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — Slide 3", start date:date "Thursday, December 17, 2026 7:00:00 PM", end date:date "Thursday, December 17, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev92 with properties {trigger interval:-5}
	set ev93 to make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — Dune: Part Three HOOK", start date:date "Friday, December 18, 2026 9:00:00 AM", end date:date "Friday, December 18, 2026 9:15:00 AM"}
	make new display alarm at end of display alarms of ev93 with properties {trigger interval:-5}
	set ev94 to make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — Dune: Part Three HOOK", start date:date "Friday, December 18, 2026 1:00:00 PM", end date:date "Friday, December 18, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev94 with properties {trigger interval:-5}
	set ev95 to make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — Dune: Part Three HOOK", start date:date "Friday, December 18, 2026 7:00:00 PM", end date:date "Friday, December 18, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev95 with properties {trigger interval:-5}
	set ev96 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 1 (rotation)", start date:date "Monday, December 21, 2026 1:00:00 PM", end date:date "Monday, December 21, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev96 with properties {trigger interval:-5}
	set ev97 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 2 (rotation)", start date:date "Monday, December 21, 2026 7:00:00 PM", end date:date "Monday, December 21, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev97 with properties {trigger interval:-5}
	set ev98 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 3 (rotation)", start date:date "Monday, December 21, 2026 9:00:00 PM", end date:date "Monday, December 21, 2026 9:15:00 PM"}
	make new display alarm at end of display alarms of ev98 with properties {trigger interval:-5}
	set ev99 to make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — The image (rotation)", start date:date "Tuesday, December 22, 2026 1:00:00 PM", end date:date "Tuesday, December 22, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev99 with properties {trigger interval:-5}
	set ev100 to make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — The image (rotation)", start date:date "Wednesday, December 23, 2026 1:00:00 PM", end date:date "Wednesday, December 23, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev100 with properties {trigger interval:-5}
	set ev101 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 1 (rotation)", start date:date "Thursday, December 24, 2026 1:00:00 PM", end date:date "Thursday, December 24, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev101 with properties {trigger interval:-5}
	set ev102 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 2 (rotation)", start date:date "Thursday, December 24, 2026 7:00:00 PM", end date:date "Thursday, December 24, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev102 with properties {trigger interval:-5}
	set ev103 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 3 (rotation)", start date:date "Thursday, December 24, 2026 9:00:00 PM", end date:date "Thursday, December 24, 2026 9:15:00 PM"}
	make new display alarm at end of display alarms of ev103 with properties {trigger interval:-5}
	set ev104 to make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — The image (rotation)", start date:date "Friday, December 25, 2026 1:00:00 PM", end date:date "Friday, December 25, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev104 with properties {trigger interval:-5}
	set ev105 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 1 (rotation)", start date:date "Monday, December 28, 2026 1:00:00 PM", end date:date "Monday, December 28, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev105 with properties {trigger interval:-5}
	set ev106 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 2 (rotation)", start date:date "Monday, December 28, 2026 7:00:00 PM", end date:date "Monday, December 28, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev106 with properties {trigger interval:-5}
	set ev107 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 1 (rotation)", start date:date "Tuesday, December 29, 2026 1:00:00 PM", end date:date "Tuesday, December 29, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev107 with properties {trigger interval:-5}
	set ev108 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 2 (rotation)", start date:date "Tuesday, December 29, 2026 7:00:00 PM", end date:date "Tuesday, December 29, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev108 with properties {trigger interval:-5}
	set ev109 to make new event at end of events of bc_cal with properties {summary:"[STORY] Faith Ordway — The image (rotation)", start date:date "Wednesday, December 30, 2026 1:00:00 PM", end date:date "Wednesday, December 30, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev109 with properties {trigger interval:-5}
	set ev110 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 1 (rotation)", start date:date "Thursday, December 31, 2026 1:00:00 PM", end date:date "Thursday, December 31, 2026 1:15:00 PM"}
	make new display alarm at end of display alarms of ev110 with properties {trigger interval:-5}
	set ev111 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 2 (rotation)", start date:date "Thursday, December 31, 2026 7:00:00 PM", end date:date "Thursday, December 31, 2026 7:15:00 PM"}
	make new display alarm at end of display alarms of ev111 with properties {trigger interval:-5}
	set ev112 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 1 (rotation)", start date:date "Friday, January 1, 2027 1:00:00 PM", end date:date "Friday, January 1, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev112 with properties {trigger interval:-5}
	set ev113 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 2 (rotation)", start date:date "Friday, January 1, 2027 7:00:00 PM", end date:date "Friday, January 1, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev113 with properties {trigger interval:-5}
	set ev114 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 3 (rotation)", start date:date "Friday, January 1, 2027 9:00:00 PM", end date:date "Friday, January 1, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev114 with properties {trigger interval:-5}
	set ev115 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — 31st birthday HOOK", start date:date "Sunday, January 3, 2027 1:00:00 PM", end date:date "Sunday, January 3, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev115 with properties {trigger interval:-5}
	set ev116 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 1 (rotation)", start date:date "Monday, January 4, 2027 1:00:00 PM", end date:date "Monday, January 4, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev116 with properties {trigger interval:-5}
	set ev117 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 2 (rotation)", start date:date "Monday, January 4, 2027 7:00:00 PM", end date:date "Monday, January 4, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev117 with properties {trigger interval:-5}
	set ev118 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 1 (rotation)", start date:date "Tuesday, January 5, 2027 1:00:00 PM", end date:date "Tuesday, January 5, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev118 with properties {trigger interval:-5}
	set ev119 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 2 (rotation)", start date:date "Tuesday, January 5, 2027 7:00:00 PM", end date:date "Tuesday, January 5, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev119 with properties {trigger interval:-5}
	set ev120 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 3 (rotation)", start date:date "Tuesday, January 5, 2027 9:00:00 PM", end date:date "Tuesday, January 5, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev120 with properties {trigger interval:-5}
	set ev121 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 1 (rotation)", start date:date "Wednesday, January 6, 2027 1:00:00 PM", end date:date "Wednesday, January 6, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev121 with properties {trigger interval:-5}
	set ev122 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 2 (rotation)", start date:date "Wednesday, January 6, 2027 7:00:00 PM", end date:date "Wednesday, January 6, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev122 with properties {trigger interval:-5}
	set ev123 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 3 (rotation)", start date:date "Wednesday, January 6, 2027 9:00:00 PM", end date:date "Wednesday, January 6, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev123 with properties {trigger interval:-5}
	set ev124 to make new event at end of events of bc_cal with properties {summary:"[STORY] Emma — Slide 1 (rotation)", start date:date "Thursday, January 7, 2027 1:00:00 PM", end date:date "Thursday, January 7, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev124 with properties {trigger interval:-5}
	set ev125 to make new event at end of events of bc_cal with properties {summary:"[STORY] Emma — Slide 2 (rotation)", start date:date "Thursday, January 7, 2027 7:00:00 PM", end date:date "Thursday, January 7, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev125 with properties {trigger interval:-5}
	set ev126 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 1 (rotation)", start date:date "Friday, January 8, 2027 1:00:00 PM", end date:date "Friday, January 8, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev126 with properties {trigger interval:-5}
	set ev127 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 2 (rotation)", start date:date "Friday, January 8, 2027 7:00:00 PM", end date:date "Friday, January 8, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev127 with properties {trigger interval:-5}
	set ev128 to make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — The image (rotation)", start date:date "Monday, January 11, 2027 1:00:00 PM", end date:date "Monday, January 11, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev128 with properties {trigger interval:-5}
	set ev129 to make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — The image (rotation)", start date:date "Tuesday, January 12, 2027 1:00:00 PM", end date:date "Tuesday, January 12, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev129 with properties {trigger interval:-5}
	set ev130 to make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — The image (rotation)", start date:date "Wednesday, January 13, 2027 1:00:00 PM", end date:date "Wednesday, January 13, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev130 with properties {trigger interval:-5}
	set ev131 to make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — The image (rotation)", start date:date "Thursday, January 14, 2027 1:00:00 PM", end date:date "Thursday, January 14, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev131 with properties {trigger interval:-5}
	set ev132 to make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — The image (rotation)", start date:date "Friday, January 15, 2027 1:00:00 PM", end date:date "Friday, January 15, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev132 with properties {trigger interval:-5}
	set ev133 to make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — The image (rotation)", start date:date "Monday, January 18, 2027 1:00:00 PM", end date:date "Monday, January 18, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev133 with properties {trigger interval:-5}
	set ev134 to make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — The image (rotation)", start date:date "Tuesday, January 19, 2027 1:00:00 PM", end date:date "Tuesday, January 19, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev134 with properties {trigger interval:-5}
	set ev135 to make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — The image (rotation)", start date:date "Wednesday, January 20, 2027 1:00:00 PM", end date:date "Wednesday, January 20, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev135 with properties {trigger interval:-5}
	set ev136 to make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — The image (rotation)", start date:date "Thursday, January 21, 2027 1:00:00 PM", end date:date "Thursday, January 21, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev136 with properties {trigger interval:-5}
	set ev137 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 1 (rotation)", start date:date "Friday, January 22, 2027 1:00:00 PM", end date:date "Friday, January 22, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev137 with properties {trigger interval:-5}
	set ev138 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 2 (rotation)", start date:date "Friday, January 22, 2027 7:00:00 PM", end date:date "Friday, January 22, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev138 with properties {trigger interval:-5}
	set ev139 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 3 (rotation)", start date:date "Friday, January 22, 2027 9:00:00 PM", end date:date "Friday, January 22, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev139 with properties {trigger interval:-5}
	set ev140 to make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — The image (rotation)", start date:date "Monday, January 25, 2027 1:00:00 PM", end date:date "Monday, January 25, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev140 with properties {trigger interval:-5}
	set ev141 to make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — The image (rotation)", start date:date "Tuesday, January 26, 2027 1:00:00 PM", end date:date "Tuesday, January 26, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev141 with properties {trigger interval:-5}
	set ev142 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 1 (rotation)", start date:date "Wednesday, January 27, 2027 1:00:00 PM", end date:date "Wednesday, January 27, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev142 with properties {trigger interval:-5}
	set ev143 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 2 (rotation)", start date:date "Wednesday, January 27, 2027 7:00:00 PM", end date:date "Wednesday, January 27, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev143 with properties {trigger interval:-5}
	set ev144 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 3 (rotation)", start date:date "Wednesday, January 27, 2027 9:00:00 PM", end date:date "Wednesday, January 27, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev144 with properties {trigger interval:-5}
	set ev145 to make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — The image (rotation)", start date:date "Thursday, January 28, 2027 1:00:00 PM", end date:date "Thursday, January 28, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev145 with properties {trigger interval:-5}
	set ev146 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 1 (rotation)", start date:date "Friday, January 29, 2027 1:00:00 PM", end date:date "Friday, January 29, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev146 with properties {trigger interval:-5}
	set ev147 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 2 (rotation)", start date:date "Friday, January 29, 2027 7:00:00 PM", end date:date "Friday, January 29, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev147 with properties {trigger interval:-5}
	set ev148 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 1 (rotation)", start date:date "Monday, February 1, 2027 1:00:00 PM", end date:date "Monday, February 1, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev148 with properties {trigger interval:-5}
	set ev149 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 2 (rotation)", start date:date "Monday, February 1, 2027 7:00:00 PM", end date:date "Monday, February 1, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev149 with properties {trigger interval:-5}
	set ev150 to make new event at end of events of bc_cal with properties {summary:"[STORY] Faith Ordway — The image (rotation)", start date:date "Tuesday, February 2, 2027 1:00:00 PM", end date:date "Tuesday, February 2, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev150 with properties {trigger interval:-5}
	set ev151 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 1 (rotation)", start date:date "Wednesday, February 3, 2027 1:00:00 PM", end date:date "Wednesday, February 3, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev151 with properties {trigger interval:-5}
	set ev152 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 2 (rotation)", start date:date "Wednesday, February 3, 2027 7:00:00 PM", end date:date "Wednesday, February 3, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev152 with properties {trigger interval:-5}
	set ev153 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 1 (rotation)", start date:date "Thursday, February 4, 2027 1:00:00 PM", end date:date "Thursday, February 4, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev153 with properties {trigger interval:-5}
	set ev154 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 2 (rotation)", start date:date "Thursday, February 4, 2027 7:00:00 PM", end date:date "Thursday, February 4, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev154 with properties {trigger interval:-5}
	set ev155 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 3 (rotation)", start date:date "Thursday, February 4, 2027 9:00:00 PM", end date:date "Thursday, February 4, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev155 with properties {trigger interval:-5}
	set ev156 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — Slide 1 (rotation)", start date:date "Friday, February 5, 2027 1:00:00 PM", end date:date "Friday, February 5, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev156 with properties {trigger interval:-5}
	set ev157 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — Slide 2 (rotation)", start date:date "Friday, February 5, 2027 7:00:00 PM", end date:date "Friday, February 5, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev157 with properties {trigger interval:-5}
	set ev158 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — Slide 3 (rotation)", start date:date "Friday, February 5, 2027 9:00:00 PM", end date:date "Friday, February 5, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev158 with properties {trigger interval:-5}
	set ev159 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 1 (rotation)", start date:date "Monday, February 8, 2027 1:00:00 PM", end date:date "Monday, February 8, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev159 with properties {trigger interval:-5}
	set ev160 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 2 (rotation)", start date:date "Monday, February 8, 2027 7:00:00 PM", end date:date "Monday, February 8, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev160 with properties {trigger interval:-5}
	set ev161 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 1 (rotation)", start date:date "Tuesday, February 9, 2027 1:00:00 PM", end date:date "Tuesday, February 9, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev161 with properties {trigger interval:-5}
	set ev162 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 2 (rotation)", start date:date "Tuesday, February 9, 2027 7:00:00 PM", end date:date "Tuesday, February 9, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev162 with properties {trigger interval:-5}
	set ev163 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 3 (rotation)", start date:date "Tuesday, February 9, 2027 9:00:00 PM", end date:date "Tuesday, February 9, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev163 with properties {trigger interval:-5}
	set ev164 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 1 (rotation)", start date:date "Wednesday, February 10, 2027 1:00:00 PM", end date:date "Wednesday, February 10, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev164 with properties {trigger interval:-5}
	set ev165 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 2 (rotation)", start date:date "Wednesday, February 10, 2027 7:00:00 PM", end date:date "Wednesday, February 10, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev165 with properties {trigger interval:-5}
	set ev166 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 3 (rotation)", start date:date "Wednesday, February 10, 2027 9:00:00 PM", end date:date "Wednesday, February 10, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev166 with properties {trigger interval:-5}
	set ev167 to make new event at end of events of bc_cal with properties {summary:"[STORY] Emma — Slide 1 (rotation)", start date:date "Thursday, February 11, 2027 1:00:00 PM", end date:date "Thursday, February 11, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev167 with properties {trigger interval:-5}
	set ev168 to make new event at end of events of bc_cal with properties {summary:"[STORY] Emma — Slide 2 (rotation)", start date:date "Thursday, February 11, 2027 7:00:00 PM", end date:date "Thursday, February 11, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev168 with properties {trigger interval:-5}
	set ev169 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 1 (rotation)", start date:date "Friday, February 12, 2027 1:00:00 PM", end date:date "Friday, February 12, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev169 with properties {trigger interval:-5}
	set ev170 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 2 (rotation)", start date:date "Friday, February 12, 2027 7:00:00 PM", end date:date "Friday, February 12, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev170 with properties {trigger interval:-5}
	set ev171 to make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — The image (rotation)", start date:date "Monday, February 15, 2027 1:00:00 PM", end date:date "Monday, February 15, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev171 with properties {trigger interval:-5}
	set ev172 to make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — The image (rotation)", start date:date "Tuesday, February 16, 2027 1:00:00 PM", end date:date "Tuesday, February 16, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev172 with properties {trigger interval:-5}
	set ev173 to make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — The image (rotation)", start date:date "Wednesday, February 17, 2027 1:00:00 PM", end date:date "Wednesday, February 17, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev173 with properties {trigger interval:-5}
	set ev174 to make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — The image (rotation)", start date:date "Thursday, February 18, 2027 1:00:00 PM", end date:date "Thursday, February 18, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev174 with properties {trigger interval:-5}
	set ev175 to make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — The image (rotation)", start date:date "Friday, February 19, 2027 1:00:00 PM", end date:date "Friday, February 19, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev175 with properties {trigger interval:-5}
	set ev176 to make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — The image (rotation)", start date:date "Monday, February 22, 2027 1:00:00 PM", end date:date "Monday, February 22, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev176 with properties {trigger interval:-5}
	set ev177 to make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — The image (rotation)", start date:date "Tuesday, February 23, 2027 1:00:00 PM", end date:date "Tuesday, February 23, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev177 with properties {trigger interval:-5}
	set ev178 to make new event at end of events of bc_cal with properties {summary:"[STORY] Renate — The image (rotation)", start date:date "Wednesday, February 24, 2027 1:00:00 PM", end date:date "Wednesday, February 24, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev178 with properties {trigger interval:-5}
	set ev179 to make new event at end of events of bc_cal with properties {summary:"[STORY] Rebecca — The image (rotation)", start date:date "Thursday, February 25, 2027 1:00:00 PM", end date:date "Thursday, February 25, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev179 with properties {trigger interval:-5}
	set ev180 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 1 (rotation)", start date:date "Friday, February 26, 2027 1:00:00 PM", end date:date "Friday, February 26, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev180 with properties {trigger interval:-5}
	set ev181 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 2 (rotation)", start date:date "Friday, February 26, 2027 7:00:00 PM", end date:date "Friday, February 26, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev181 with properties {trigger interval:-5}
	set ev182 to make new event at end of events of bc_cal with properties {summary:"[STORY] Gracie Abrams — Slide 3 (rotation)", start date:date "Friday, February 26, 2027 9:00:00 PM", end date:date "Friday, February 26, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev182 with properties {trigger interval:-5}
	set ev183 to make new event at end of events of bc_cal with properties {summary:"[STORY] Zendaya — The image (rotation)", start date:date "Monday, March 1, 2027 1:00:00 PM", end date:date "Monday, March 1, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev183 with properties {trigger interval:-5}
	set ev184 to make new event at end of events of bc_cal with properties {summary:"[STORY] Romy — The image (rotation)", start date:date "Tuesday, March 2, 2027 1:00:00 PM", end date:date "Tuesday, March 2, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev184 with properties {trigger interval:-5}
	set ev185 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 1 (rotation)", start date:date "Wednesday, March 3, 2027 1:00:00 PM", end date:date "Wednesday, March 3, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev185 with properties {trigger interval:-5}
	set ev186 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 2 (rotation)", start date:date "Wednesday, March 3, 2027 7:00:00 PM", end date:date "Wednesday, March 3, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev186 with properties {trigger interval:-5}
	set ev187 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — Slide 3 (rotation)", start date:date "Wednesday, March 3, 2027 9:00:00 PM", end date:date "Wednesday, March 3, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev187 with properties {trigger interval:-5}
	set ev188 to make new event at end of events of bc_cal with properties {summary:"[STORY] Anya — The image (rotation)", start date:date "Thursday, March 4, 2027 1:00:00 PM", end date:date "Thursday, March 4, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev188 with properties {trigger interval:-5}
	set ev189 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 1 (rotation)", start date:date "Friday, March 5, 2027 1:00:00 PM", end date:date "Friday, March 5, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev189 with properties {trigger interval:-5}
	set ev190 to make new event at end of events of bc_cal with properties {summary:"[STORY] Odessa — Slide 2 (rotation)", start date:date "Friday, March 5, 2027 7:00:00 PM", end date:date "Friday, March 5, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev190 with properties {trigger interval:-5}
	set ev191 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 1 (rotation)", start date:date "Monday, March 8, 2027 1:00:00 PM", end date:date "Monday, March 8, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev191 with properties {trigger interval:-5}
	set ev192 to make new event at end of events of bc_cal with properties {summary:"[STORY] Olivia — Slide 2 (rotation)", start date:date "Monday, March 8, 2027 7:00:00 PM", end date:date "Monday, March 8, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev192 with properties {trigger interval:-5}
	set ev193 to make new event at end of events of bc_cal with properties {summary:"[STORY] Faith Ordway — The image (rotation)", start date:date "Tuesday, March 9, 2027 1:00:00 PM", end date:date "Tuesday, March 9, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev193 with properties {trigger interval:-5}
	set ev194 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 1 (rotation)", start date:date "Wednesday, March 10, 2027 1:00:00 PM", end date:date "Wednesday, March 10, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev194 with properties {trigger interval:-5}
	set ev195 to make new event at end of events of bc_cal with properties {summary:"[STORY] Syd — Slide 2 (rotation)", start date:date "Wednesday, March 10, 2027 7:00:00 PM", end date:date "Wednesday, March 10, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev195 with properties {trigger interval:-5}
	set ev196 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 1 (rotation)", start date:date "Thursday, March 11, 2027 1:00:00 PM", end date:date "Thursday, March 11, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev196 with properties {trigger interval:-5}
	set ev197 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 2 (rotation)", start date:date "Thursday, March 11, 2027 7:00:00 PM", end date:date "Thursday, March 11, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev197 with properties {trigger interval:-5}
	set ev198 to make new event at end of events of bc_cal with properties {summary:"[STORY] Katrin — Slide 3 (rotation)", start date:date "Thursday, March 11, 2027 9:00:00 PM", end date:date "Thursday, March 11, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev198 with properties {trigger interval:-5}
	set ev199 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — Slide 1 (rotation)", start date:date "Friday, March 12, 2027 1:00:00 PM", end date:date "Friday, March 12, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev199 with properties {trigger interval:-5}
	set ev200 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — Slide 2 (rotation)", start date:date "Friday, March 12, 2027 7:00:00 PM", end date:date "Friday, March 12, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev200 with properties {trigger interval:-5}
	set ev201 to make new event at end of events of bc_cal with properties {summary:"[STORY] Florence — Slide 3 (rotation)", start date:date "Friday, March 12, 2027 9:00:00 PM", end date:date "Friday, March 12, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev201 with properties {trigger interval:-5}
	set ev202 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 1 (rotation)", start date:date "Monday, March 15, 2027 1:00:00 PM", end date:date "Monday, March 15, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev202 with properties {trigger interval:-5}
	set ev203 to make new event at end of events of bc_cal with properties {summary:"[STORY] Samara — Slide 2 (rotation)", start date:date "Monday, March 15, 2027 7:00:00 PM", end date:date "Monday, March 15, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev203 with properties {trigger interval:-5}
	set ev204 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 1 (rotation)", start date:date "Tuesday, March 16, 2027 1:00:00 PM", end date:date "Tuesday, March 16, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev204 with properties {trigger interval:-5}
	set ev205 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 2 (rotation)", start date:date "Tuesday, March 16, 2027 7:00:00 PM", end date:date "Tuesday, March 16, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev205 with properties {trigger interval:-5}
	set ev206 to make new event at end of events of bc_cal with properties {summary:"[STORY] Inde — Slide 3 (rotation)", start date:date "Tuesday, March 16, 2027 9:00:00 PM", end date:date "Tuesday, March 16, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev206 with properties {trigger interval:-5}
	set ev207 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 1 (rotation)", start date:date "Wednesday, March 17, 2027 1:00:00 PM", end date:date "Wednesday, March 17, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev207 with properties {trigger interval:-5}
	set ev208 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 2 (rotation)", start date:date "Wednesday, March 17, 2027 7:00:00 PM", end date:date "Wednesday, March 17, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev208 with properties {trigger interval:-5}
	set ev209 to make new event at end of events of bc_cal with properties {summary:"[STORY] Bea — Slide 3 (rotation)", start date:date "Wednesday, March 17, 2027 9:00:00 PM", end date:date "Wednesday, March 17, 2027 9:15:00 PM"}
	make new display alarm at end of display alarms of ev209 with properties {trigger interval:-5}
	set ev210 to make new event at end of events of bc_cal with properties {summary:"[STORY] Lily Collins — 38th birthday + Emily in Paris HOOK", start date:date "Thursday, March 18, 2027 1:00:00 PM", end date:date "Thursday, March 18, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev210 with properties {trigger interval:-5}
	set ev211 to make new event at end of events of bc_cal with properties {summary:"[STORY] Elle — The Nightingale HOOK", start date:date "Friday, March 19, 2027 1:00:00 PM", end date:date "Friday, March 19, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev211 with properties {trigger interval:-5}
	set ev212 to make new event at end of events of bc_cal with properties {summary:"[STORY] Emma — Slide 1 (rotation)", start date:date "Monday, March 22, 2027 1:00:00 PM", end date:date "Monday, March 22, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev212 with properties {trigger interval:-5}
	set ev213 to make new event at end of events of bc_cal with properties {summary:"[STORY] Emma — Slide 2 (rotation)", start date:date "Monday, March 22, 2027 7:00:00 PM", end date:date "Monday, March 22, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev213 with properties {trigger interval:-5}
	set ev214 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 1 (rotation)", start date:date "Tuesday, March 23, 2027 1:00:00 PM", end date:date "Tuesday, March 23, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev214 with properties {trigger interval:-5}
	set ev215 to make new event at end of events of bc_cal with properties {summary:"[STORY] Grace — Slide 2 (rotation)", start date:date "Tuesday, March 23, 2027 7:00:00 PM", end date:date "Tuesday, March 23, 2027 7:15:00 PM"}
	make new display alarm at end of display alarms of ev215 with properties {trigger interval:-5}
	set ev216 to make new event at end of events of bc_cal with properties {summary:"[STORY] Karlie — The image (rotation)", start date:date "Wednesday, March 24, 2027 1:00:00 PM", end date:date "Wednesday, March 24, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev216 with properties {trigger interval:-5}
	set ev217 to make new event at end of events of bc_cal with properties {summary:"[STORY] Núria — The image (rotation)", start date:date "Thursday, March 25, 2027 1:00:00 PM", end date:date "Thursday, March 25, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev217 with properties {trigger interval:-5}
	set ev218 to make new event at end of events of bc_cal with properties {summary:"[STORY] Paula — The image (rotation)", start date:date "Friday, March 26, 2027 1:00:00 PM", end date:date "Friday, March 26, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev218 with properties {trigger interval:-5}
	set ev219 to make new event at end of events of bc_cal with properties {summary:"[STORY] Kate Bartlett — The image (rotation)", start date:date "Monday, March 29, 2027 1:00:00 PM", end date:date "Monday, March 29, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev219 with properties {trigger interval:-5}
	set ev220 to make new event at end of events of bc_cal with properties {summary:"[STORY] Erin — The image (rotation)", start date:date "Tuesday, March 30, 2027 1:00:00 PM", end date:date "Tuesday, March 30, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev220 with properties {trigger interval:-5}
	set ev221 to make new event at end of events of bc_cal with properties {summary:"[STORY] Amelie — The image (rotation)", start date:date "Wednesday, March 31, 2027 1:00:00 PM", end date:date "Wednesday, March 31, 2027 1:15:00 PM"}
	make new display alarm at end of display alarms of ev221 with properties {trigger interval:-5}

end tell

display notification "BrandComposer calendar rebuilt with 222 events." with title "Calendar Update Complete"
