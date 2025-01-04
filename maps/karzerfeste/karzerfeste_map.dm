/datum/map/karzerfeste
	default_liquid_fuel_type = /decl/material/liquid/oil
	loadout_categories = list(
		/decl/loadout_category/fantasy/clothing,
		/decl/loadout_category/fantasy/utility
	)

/datum/map/karzerfeste/finalize_map_generation()
	. = ..()
	// Leaving this defined in case we want to ban rain or such
	var/static/list/banned_weather = list()
	var/datum/level_data/region = SSmapping.levels_by_id["karzerfeste_keep"]
	if(istype(region)) // if this is false, something has badly exploded
		SSweather.setup_weather_system(region, banned_states = banned_weather)

/decl/spawnpoint/arrivals
	name = "Queens' Road"
	spawn_announcement = null
