/turf/wall/natural/basalt/karzerfeste
	strata_override = /decl/strata/karzerfeste

/turf/wall/natural/random/basalt/karzerfeste
	strata_override = /decl/strata/karzerfeste

/turf/wall/natural/random/high_chance/basalt/karzerfeste
	strata_override = /decl/strata/karzerfeste

// Simplified metal list.
/decl/strata/karzerfeste
	name = "mountainous rock"
	base_materials = list(/decl/material/solid/stone/basalt)
	default_strata_candidate = FALSE
	ores_sparse = list(
		/decl/material/solid/quartz,
		/decl/material/solid/graphite,
		/decl/material/solid/tetrahedrite,
		/decl/material/solid/hematite
	)
	ores_rich = list(
		/decl/material/solid/gemstone/diamond,
		/decl/material/solid/metal/gold,
		/decl/material/solid/metal/platinum,
		/decl/material/solid/densegraphite,
		/decl/material/solid/galena
	)
