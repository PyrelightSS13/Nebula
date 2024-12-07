#if !defined(USING_MAP_DATUM)

	#include "../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../mods/content/scaling_descriptors.dm"
	#include "../../mods/species/drakes/_drakes.dme" // include before _fantasy.dme so overrides work
	#include "../../mods/content/fantasy/_fantasy.dme"
	#include "../../mods/pyrelight/_pyrelight.dme" // include after _fantasy.dme so overrides work

	#include "areas/_area.dm"
	#include "areas/caves.dm"
	#include "areas/keep.dm"
	#include "areas/road.dm"
	#include "areas/ward.dm"

	#include "jobs/_job.dm"
	#include "jobs/guild.dm"
	#include "jobs/keep.dm"
	#include "jobs/kingdom.dm"
	#include "jobs/local.dm"
	#include "jobs/shrine.dm"
	#include "jobs/steppe.dm"

	#include "outfits/_outfit.dm"
	#include "outfits/guild.dm"
	#include "outfits/keep.dm"
	#include "outfits/kingdom.dm"
	#include "outfits/local.dm"
	#include "outfits/shrine.dm"
	#include "outfits/steppe.dm"

	#include "levels/_level.dm"
	#include "levels/strata.dm"

	#include "karzerfeste_currency.dm"
	#include "karzerfeste_events.dm"
	#include "karzerfeste_map.dm"
	#include "karzerfeste_skills.dm"
	#include "karzerfeste_testing.dm"
	#include "karzerfeste_turfs.dm"

	#include "karzerfeste-1-0.dmm"
	#include "karzerfeste-1-1.dmm"
	#include "karzerfeste-1-2.dmm"

	#define USING_MAP_DATUM /datum/map/karzerfeste

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Berg Karzerfeste
#endif
