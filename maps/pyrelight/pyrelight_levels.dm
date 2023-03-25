/datum/level_data/pyrelight_keep
	name = "Pyrelight Keep"
	use_global_exterior_ambience = FALSE
	ambient_light_color = COLOR_PALE_BLUE_GRAY
	ambient_light_level = 0.8
	exterior_atmos_temp = T20C
	exterior_atmosphere = list(
		/decl/material/gas/oxygen = MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)

/obj/abstract/level_data_spawner/pyrelight
	name = "Pyrelight Keep"
	level_data_type = /datum/level_data/pyrelight_keep

/area/pyrelight/outside
	name = "Coastal Wilds"
	has_gravity = TRUE
	is_outside = TRUE
