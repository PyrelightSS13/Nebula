/obj/item/chems/food/fruit/flower_nightweave
	name = "nightweave flower"
	desc = "A night-blooming flower found in damp places, such as cavern entrances or along the shoreline."
	examine_info = "The bioluminescent petals are extremely poisonous, and the stamen and stigma can be used to brew potent sedatives."
	icon = 'mods/pyrelight/icons/fruit/nightweave.dmi'
	is_spawnable_type = TRUE

/obj/item/chems/food/fruit/flower_nightweave/get_composition()
	var/static/list/composition = list(
		new /datum/fruit_segment/petal(
			"nightweave petal",
			"A faintly glowing petal from a nightweave flower.",
			3,
			list(
				/decl/material/liquid/cyanide = 1
			),
			"Nightweave petals are exceptionally poisonous, attacking the heart and killing in minutes."
		),
		new /datum/fruit_segment/stamen(
			"nightweave stamen",
			"A pollen-laden stamen from a nightweave flower.",
			2,
			list(
				/decl/material/liquid/sedatives = 2
			),
			"Nightweave pollen is known for its sedative effects, which can be delivered via a pill, in tea, or as snuff."
		),
		new /datum/fruit_segment/stigma(
			"nightweave stigma",
			"A tiny, delicate stigma harvested from a nightweave flower.",
			1,
			list(
				/decl/material/liquid/paralytics = 3
			),
			"The stigma of the nightweave flower is exceptionally difficult to remove intact, but can be refined into a potent paralytic.",
			SKILL_EXPERT
		)
	)
	return composition
