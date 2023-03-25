/decl/department/pyrelight/alchemist_guild
	name = "Alchemist's Guild"
	noun = "guild"
	noun_adj = "guild"
	display_priority = 3
	colour = "#dd0000"
	display_color = "#ffddf0"

/datum/job/pyrelight/alchemist
	department_types = list(
		/decl/department/pyrelight/alchemist_guild,
		/decl/department/pyrelight/townsfolk
	)
	selection_color = "#601c1c"

/datum/job/pyrelight/alchemist/master
	title = "Master Alchemist"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	selection_color = "#8e2929"

/datum/job/pyrelight/alchemist/journeyman
	title = "Journeyman Alchemist"
	total_positions = 3
	spawn_positions = 2

/datum/job/pyrelight/alchemist/apprentice
	title = "Apprentice Alchemist"
	total_positions = -1
