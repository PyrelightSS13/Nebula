///Windy surface
/area/exoplanet
	name = "\improper Planetary surface"
	ambience = list(
		'sound/effects/wind/wind_2_1.ogg',
		'sound/effects/wind/wind_2_2.ogg',
		'sound/effects/wind/wind_3_1.ogg',
		'sound/effects/wind/wind_4_1.ogg',
		'sound/effects/wind/wind_4_2.ogg',
		'sound/effects/wind/wind_5_1.ogg'
	)
	always_unpowered = TRUE
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_EXTERNAL | AREA_FLAG_HIDE_FROM_HOLOMAP
	is_outside = OUTSIDE_YES

// Let's make a token effort at making the fish somewhat alien I guess.
/area/exoplanet/get_fishing_result(turf/origin, obj/item/food/bait)
	. = ..()
	if(ismob(.))
		var/mob/M = .
		M.SetName("xeno-[M.name]")
		M.set_color(get_random_colour(simple = TRUE))

///Spoopy undergrounds
/area/exoplanet/underground
	name = "\improper Planetary mantle"
	ambience = list(
		'sound/ambience/ominous1.ogg',
		'sound/ambience/ominous2.ogg',
		'sound/ambience/ominous3.ogg',
	)
	area_flags = AREA_FLAG_IS_BACKGROUND | AREA_FLAG_HIDE_FROM_HOLOMAP | AREA_FLAG_ION_SHIELDED | AREA_FLAG_RAD_SHIELDED
	is_outside = OUTSIDE_NO
