/datum/map/karzerfeste
	name          = "karzerfeste"
	full_name     = "Burg Karzerfeste"
	path          = "karzerfeste"
	station_name  = "Burg Karzerfeste"
	station_short = "Karzerfeste"

	// Leaving these for later replacement.
	dock_name     = "shaded heights"
	boss_name     = "the Guild"
	boss_short    = "Guild"
	company_name  = "whispers from the Deep"
	company_short = "the Deep"
	system_name   = "Downlands"

	default_spawn = /decl/spawnpoint/arrivals
	allowed_latejoin_spawns = list(
		/decl/spawnpoint/arrivals
	)
	map_tech_level          = MAP_TECH_LEVEL_MEDIEVAL
	survival_box_choices    = list()
	passport_type           = null
	_available_backpacks    = list(
		/decl/backpack_outfit/sack
	)
	lobby_screens = list(
		'maps/karzerfeste/pyre_light.png'
	)
	lobby_tracks = list(
		/decl/music_track/dhaka,
		/decl/music_track/teller,
		/decl/music_track/suonatore
	)
	credit_sound = list(
		'sound/music/Miris-Magic-Dance.ogg'
	)
	game_year = -914 // in 2024, the year should be 1110, roughly a century after the fall of the Imperial Aegis

	char_preview_bgstate_options = list(
		"000",
		"midgrey",
		"FFF",
		"wood"  = /turf/floor/wood::color,
		"mud",
		"grass" = /turf/floor/grass::color,
		"rock"  = /turf/floor/rock/basalt::color,
		"brick" = /turf/wall/brick/sandstone::color
	)

/decl/backpack_outfit/sack
	is_default = TRUE

// TODO replace this
/datum/map/karzerfeste/get_map_info()
	return "You're in <b>[station_name]</b>, an ancient ruin straddling the mountainous border between the Downlands and the Nine Mothers. In recent years, the Guild has established a settlement in the ruined keep, exploring the dungeons below and brokering an uneasy peace between the Nine Mothers clans and Splinter Kingdom baronies who would otherwise take the keep for themselves."
