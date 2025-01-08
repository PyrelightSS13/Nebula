/obj/abstract/map_data/karzerfeste
	height = 3

/datum/level_data/main_level/karzerfeste
	use_global_exterior_ambience = FALSE
	base_area = null
	base_turf = /turf/floor/dirt
	abstract_type = /datum/level_data/main_level/karzerfeste
	strata = /decl/strata/karzerfeste
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
	template_edge_padding = 0 // we use a strictly delineated subarea, no need for this guard
	var/submap_budget   = 0
	var/submap_category = null
	var/submap_area
	var/list/mobs_to_spawn = list()


/datum/level_data/main_level/karzerfeste/get_subtemplate_areas(template_category, blacklist, whitelist)
	return submap_area ? (islist(submap_area) ? submap_area : list(submap_area)) : null

/datum/level_data/main_level/karzerfeste/get_subtemplate_budget()
	return submap_budget

/datum/level_data/main_level/karzerfeste/get_subtemplate_category()
	return submap_category

/datum/level_data/main_level/karzerfeste/after_generate_level()
	. = ..()
	if(length(mobs_to_spawn))
		for(var/list/mob_category in mobs_to_spawn)
			var/list/mob_types = mob_category[1]
			var/mob_turf  = mob_category[2]
			var/mob_count = mob_category[3]
			var/sanity = 1000
			while(mob_count && sanity)
				sanity--
				var/turf/place_mob_at = locate(rand(level_inner_min_x, level_inner_max_x), rand(level_inner_min_y, level_inner_max_y), level_z)
				if(istype(place_mob_at, mob_turf) && !(locate(/mob/living) in place_mob_at))
					var/mob_type = pickweight(mob_types)
					new mob_type(place_mob_at)
					mob_count--
					CHECK_TICK

/datum/daycycle/karzerfeste
	cycle_duration = 2 HOURS // 1 hour of daylight, 1 hour of night

// Randomized time of day to start at.
/datum/daycycle/karzerfeste/New()
	time_in_cycle = rand(cycle_duration)
	..()

/datum/level_data/main_level/karzerfeste/caves
	name = "Karzerfeste - Subterrain"
	level_id = "karzerfeste_caves"
	ambient_light_level = 0
	level_generators = list(
		/datum/random_map/automata/cave_system/karzerfeste,
		/datum/random_map/noise/ore/rich,
		/datum/random_map/noise/karzerfeste/caves
	)
	submap_budget = 30
	submap_category = MAP_TEMPLATE_CATEGORY_KARZ_DUNGEON
	submap_area = /area/karzerfeste/caves/poi

/datum/level_data/main_level/karzerfeste/surface
	name = "Karzerfeste - Surface"
	level_id = "karzerfeste_keep"
	connected_levels = list(
		"karzerfeste_woods" = WEST
	)
	level_generators = list(
		/datum/random_map/noise/karzerfeste/tundra,
		/datum/random_map/automata/cave_system/karzerfeste,
		/datum/random_map/noise/ore/poor,
		/datum/random_map/noise/karzerfeste/caves,
		/datum/random_map/noise/forage/karzerfeste/tundra
	)

/datum/level_data/main_level/karzerfeste/rooftops
	name = "Karzerfeste - Rooftops"
	level_id = "karzerfeste_rooftops"
	level_generators = list(
		/datum/random_map/automata/cave_system/karzerfeste,
		/datum/random_map/noise/karzerfeste/caves
	)
	daycycle_type = /datum/daycycle/karzerfeste
	daycycle_id = "daycycle_karzerfeste"

/datum/level_data/main_level/karzerfeste/woods
	name = "Karzerfeste - Woods"
	level_id = "karzerfeste_woods"
	connected_levels = list(
		"karzerfeste_keep" = EAST
	)
	level_generators = list(
		/datum/random_map/noise/karzerfeste/woods,
		/datum/random_map/noise/forage/karzerfeste/woods
	)
	mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse/white = 10,
				/mob/living/simple_animal/passive/rabbit      = 6,
				/mob/living/simple_animal/passive/fox/arctic  = 3
			),
			/turf/floor/grass,
			10
		)
	)
	daycycle_type = /datum/daycycle/karzerfeste
	daycycle_id = "daycycle_karzerfeste"

/obj/abstract/level_data_spawner/karzerfeste_caves
	level_data_type = /datum/level_data/main_level/karzerfeste/caves

/obj/abstract/level_data_spawner/karzerfeste_surface
	level_data_type = /datum/level_data/main_level/karzerfeste/surface

/obj/abstract/level_data_spawner/karzerfeste_rooftops
	level_data_type = /datum/level_data/main_level/karzerfeste/rooftops

/obj/abstract/level_data_spawner/karzerfeste_woods
	level_data_type = /datum/level_data/main_level/karzerfeste/woods
