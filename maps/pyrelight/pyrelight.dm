#if !defined(USING_MAP_DATUM)

	#define USING_MAP_DATUM /datum/map/pyrelight
	#include "../../mods/pyrelight/_pyrelight.dme"

	#include "jobs/_departments.dm"
	#include "jobs/_jobs.dm"
	#include "jobs/alchemist.dm"
	#include "jobs/artisan.dm"
	#include "jobs/builder.dm"
	#include "jobs/city_watch.dm"
	#include "jobs/healer.dm"
	#include "jobs/nobility.dm"
	#include "jobs/townsfolk.dm"

	#include "pyrelight_levels.dm"
	#include "pyrelight.dmm"

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring pyrelight.

#endif