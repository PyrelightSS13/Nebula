/decl/flooring/snow
	name            = "snow"
	desc            = "Let it snow, let it snow, let it snow..."
	icon            = 'icons/turf/flooring/snow.dmi'
	icon_base       = "snow"
	icon_edge_layer = FLOOR_EDGE_SNOW
	footstep_type   = /decl/footsteps/snow
	has_base_range  = 13
	force_material  = /decl/material/solid/ice/snow
	can_collect     = TRUE
	print_type      = /obj/effect/footprints
	drop_material_on_remove = TRUE

/decl/flooring/snow/get_movement_delay(var/travel_dir, var/mob/mover)
	. = ..()
	if(mover)
		var/obj/item/clothing/shoes/shoes = mover.get_equipped_item(slot_shoes_str)
		if(shoes)
			. += shoes.snow_slowdown_mod
		var/decl/species/my_species = mover.get_species()
		if(my_species)
			. += my_species.snow_slowdown_mod
		. = max(., 0)

/decl/flooring/snow/fire_act(turf/floor/target, datum/gas_mixture/air, exposed_temperature, exposed_volume)
	if(!target.reagents?.total_volume)
		if(target.get_topmost_flooring() == src)
			target.set_flooring(/decl/flooring/permafrost)
		else if(target.get_base_flooring() == src)
			target.set_base_flooring(/decl/flooring/permafrost)
		return
	return ..()

/decl/flooring/snow/turf_crossed(atom/movable/crosser)
	if(!isliving(crosser))
		return
	var/mob/living/walker = crosser
	walker.add_walking_contaminant(force_material.type, rand(2,3))

/decl/flooring/snow/can_show_coating_footprints(turf/target, decl/material/contaminant)
	if(force_material.type == contaminant) // So we don't end up covered in a million footsteps that we provided.
		return FALSE
	return ..()

/decl/flooring/permafrost
	name            = "permafrost"
	desc            = "A stretch of frozen soil that hasn't seen a thaw for many seasons."
	icon            = 'icons/turf/flooring/snow.dmi'
	icon_base       = "permafrost"
	force_material  = /decl/material/solid/ice

/decl/flooring/snow/fake
	name            = "holosnow"
	desc            = "Not quite the same as snow on an entertainment terminal, but close."
	holographic     = TRUE
