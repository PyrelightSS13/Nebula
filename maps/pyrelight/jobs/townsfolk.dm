/decl/department/pyrelight/townsfolk
	name = "Townsfolk"
	noun = "town"
	noun_adj = "town"
	display_priority = 0
	colour = "#88b764"
	display_color = "#d0f0c0"

/datum/job/pyrelight/townsfolk
	department_types = list(
		/decl/department/pyrelight/townsfolk
	)

/datum/job/pyrelight/townsfolk/basic
	title = "Townsfolk"
	total_positions = -1
	alt_titles = list(
		"Scribe",
		"Baker",
		"Cook",
		"Farmer",
		"Miner",
		"Vagrant",
		"Dockworker",
		"Priest"
	)

/datum/job/pyrelight/townsfolk/tavern_owner
	title = "Tavern Proprietor"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1

/datum/job/pyrelight/townsfolk/tavern_worker
	title = "Tavern Worker"
	total_positions = 3
	spawn_positions = 2
	alt_titles = list(
		"Tavern Cook",
		"Tavern Server",
		"Tavern Barkeep"
	)

/datum/job/pyrelight/townsfolk/lighthouse_keeper
	title = "Lighthouse Keeper"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1

/datum/job/pyrelight/townsfolk/lighthouse_apprentice
	title = "Apprentice Lighthouse Keeper"
	total_positions = 1
	spawn_positions = 1

/datum/job/pyrelight/townsfolk/hermit
	title = "Hermit"
	total_positions = 3
	spawn_positions = 1
