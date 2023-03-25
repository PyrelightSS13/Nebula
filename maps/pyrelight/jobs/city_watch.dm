/decl/department/pyrelight/city_watch
	name = "City Watch"
	noun = "watch"
	noun_adj = "watch"
	display_color = "#ccffcc"
	display_priority = 5

/datum/job/pyrelight/city_watch
	selection_color = "#254c25"
	department_types = list(
		/decl/department/pyrelight/city_watch
	)

/datum/job/pyrelight/city_watch/captain
	title = "Watch Captain"
	head_position = TRUE
	total_positions = 1
	spawn_positions = 1
	selection_color = "#3f823f"

/datum/job/pyrelight/city_watch/sergeant
	title = "Watch Sergeant"
	total_positions = 2
	spawn_positions = 1

/datum/job/pyrelight/city_watch/officer
	title = "Watch Officer"
	total_positions = 3
	spawn_positions = 2
	alt_titles = list(
		"Junior Watch Officer"
	)
