/obj/abstract/level_data/pyrelight
	name = "Pyrelight Keep"
	take_starlight_ambience = FALSE
	ambient_light_color = COLOR_PALE_BLUE_GRAY
	ambient_light_level = 0.8
	exterior_atmos_temp = T20C
	exterior_atmosphere = list(
		/decl/material/gas/oxygen = MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)

/area/pyrelight/outside
	name = "Coastal Wilds"
	has_gravity = TRUE
	is_outside = TRUE
