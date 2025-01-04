/datum/random_map/automata/cave_system/karzerfeste
	descriptor          = "Karzerfeste caves"
	floor_type          = /turf/unsimulated/mask_alt
	wall_type           = /turf/wall/natural/basalt/karzerfeste
	sparse_mineral_turf = /turf/wall/natural/random/basalt/karzerfeste
	rich_mineral_turf   = /turf/wall/natural/random/high_chance/basalt/karzerfeste

/datum/random_map/noise/karzerfeste
	abstract_type        = /datum/random_map/noise/karzerfeste
	smoothing_iterations = 1
	smooth_single_tiles  = TRUE

/datum/random_map/noise/karzerfeste/caves
	descriptor = "Karzerfeste Caves"
	target_turf_type = /turf/unsimulated/mask_alt

/datum/random_map/noise/karzerfeste/caves/get_appropriate_path(var/value)
	value = noise2value(value)
	if(value <= 3)
		return /turf/floor/mud/water
	if(value <= 5)
		return /turf/floor/mud
	if(value <= 7)
		return /turf/floor/dirt
	return /turf/floor/rock/basalt

/datum/random_map/noise/karzerfeste/tundra
	descriptor = "Karzerfeste Tundra"
	target_turf_type = /turf/floor/snow

/datum/random_map/noise/karzerfeste/tundra/get_appropriate_path(var/value)
	value = noise2value(value)
	if(value <= 3)
		return /turf/floor/grass
	if(value <= 5)
		return /turf/floor/dirt
	if(value <= 7)
		return /turf/floor/snow
	return /turf/floor/ice

/datum/random_map/noise/karzerfeste/woods
	descriptor = "Karzerfeste Woods"
	target_turf_type = /turf/unsimulated/mask

/datum/random_map/noise/karzerfeste/woods/get_appropriate_path(var/value)
	value = noise2value(value)
	if(value <= 3)
		return /turf/floor/grass/wild
	if(value <= 5)
		return /turf/floor/grass
	if(value <= 7)
		return /turf/floor/dirt
	return /turf/floor/snow

/datum/random_map/noise/forage/karzerfeste/tundra
	tree_weight = 2
	trees = list(
		/obj/structure/flora/bush/snow = 1
	)

/datum/random_map/noise/forage/karzerfeste/woods
	tree_weight = 7
	trees = list(
		/obj/structure/flora/tree/hardwood/walnut   =  8,
		/obj/structure/flora/tree/hardwood/yew      =  8,
		/obj/structure/flora/tree/hardwood/mahogany =  8,
		/obj/structure/flora/tree/dead/walnut       =  1,
		/obj/structure/flora/tree/dead/yew          =  1,
		/obj/structure/flora/tree/dead/mahogany     =  1,
		/obj/structure/flora/bush/snow              = 10
	)

/datum/random_map/noise/forage/karzerfeste/woods/New()
	forage["grass"] |= list(
		"ginseng",
		"foxglove",
		"aloe",
		"yarrow",
		"valerian"
	)
	..()
