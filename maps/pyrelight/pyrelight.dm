#if !defined(USING_MAP_DATUM)

	#define USING_MAP_DATUM /datum/map/pyrelight
	#include "../../mods/pyrelight/_pyrelight.dme"
	#include "pyrelight.dmm"
	#include "pyrelight_levels.dm"

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring pyrelight.

#endif