/decl/department/pyrelight/nobility
	name = "Barony"
	noun = "noble"
	noun_adj = "noble"
	colour = "#800080"
	display_color = "#ccccff"
	display_priority = 6

/datum/job/pyrelight/nobility
	department_types = list(
		/decl/department/pyrelight/nobility
	)
	selection_color = "#633d63"

/datum/job/pyrelight/nobility/baron
	title = "Baron"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	selection_color = "#ad6bad"

/datum/job/pyrelight/nobility/baron_consort
	title = "Baron Consort"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	selection_color = "#ad6bad"

/datum/job/pyrelight/nobility/royal_physician
	title = "Royal Physician"
	total_positions = 1
	spawn_positions = 2
	alt_titles = list(
		"Apprentice Physician"
	)

/datum/job/pyrelight/nobility/royal_guard_captain
	title = "Captain of the Royal Guard"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	selection_color = "#ad6bad"

/datum/job/pyrelight/nobility/royal_guard
	title = "Royal Guard"
	total_positions = 2
	spawn_positions = 1

/datum/job/pyrelight/nobility/diplomat
	title = "Diplomat"
	total_positions = 2
	spawn_positions = 1
