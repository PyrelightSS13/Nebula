/decl/department/pyrelight/artisan_guild
	name = "Artisan's Guild"
	noun = "guild"
	noun_adj = "guild"
	colour = "#bb9040"
	display_color = "#f0e68c"
	display_priority = 1

/datum/job/pyrelight/artisan
	department_types = list(
		/decl/department/pyrelight/artisan_guild,
		/decl/department/pyrelight/townsfolk
	)

/datum/job/pyrelight/artisan/master
	title = "Master Artisan"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1

/datum/job/pyrelight/artisan/journeyman
	title = "Journeyman Artisan"
	total_positions = 3
	spawn_positions = 2

/datum/job/pyrelight/artisan/apprentice
	title = "Apprentice Artisan"
	total_positions = -1
