/decl/department/pyrelight/builder_guild
	name = "Builder's Guild"
	noun = "guild"
	noun_adj = "guild"
	colour = "#ffa500"
	display_color = "#fff5cc"
	display_priority = 2

/datum/job/pyrelight/builder
	selection_color = "#5b4d20"
	department_types = list(
		/decl/department/pyrelight/builder_guild,
		/decl/department/pyrelight/townsfolk
	)

/datum/job/pyrelight/builder/master
	title = "Master Builder"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	selection_color = "#7f6e2c"

/datum/job/pyrelight/builder/journeyman
	title = "Journeyman Builder"
	total_positions = 3
	spawn_positions = 2

/datum/job/pyrelight/builder/apprentice
	title = "Apprentice Builder"
	total_positions = -1
