/decl/department/pyrelight/healer_guild
	name = "Healer's Guild"
	noun = "guild"
	noun_adj = "guild"
	colour = "#008000"
	display_color = "#ffeef0"
	display_priority = 4

/datum/job/pyrelight/healer
	selection_color = "#013d3b"
	department_types = list(
		/decl/department/pyrelight/healer_guild,
		/decl/department/pyrelight/townsfolk
	)

/datum/job/pyrelight/healer/master
	title = "Master Healer"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	alt_titles = list(
		"Master Chirurgeon"
	)
	selection_color = "#026865"

/datum/job/pyrelight/healer/journeyman
	title = "Journeyman Healer"
	total_positions = 3
	spawn_positions = 2
	alt_titles = list(
		"Journeyman Chirurgeon"
	)

/datum/job/pyrelight/healer/apprentice
	title = "Apprentice Healer"
	total_positions = -1
	alt_titles = list(
		"Apprentice Chirurgeon"
	)
