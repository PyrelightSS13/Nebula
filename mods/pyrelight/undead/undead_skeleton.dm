/datum/mob_controller/aggressive/skeleton

// SKELETONS
// Immune to blind or deaf, but weak to physical damage.
/mob/living/human/proc/make_skeleton()
	set_trait(/decl/trait/metabolically_inert, TRAIT_LEVEL_EXISTS)
	set_trait(/decl/trait/undead, TRAIT_LEVEL_MODERATE)

	if(istype(ai))
		QDEL_NULL(ai)
	ai = new /datum/mob_controller/aggressive/skeleton(src)
	faction = "undead"

	for(var/obj/item/organ/external/limb in get_external_organs())
		if(!BP_IS_PROSTHETIC(limb))
			limb.skeletonize()

	for(var/obj/item/organ/internal/organ in get_internal_organs())
		remove_organ(organ, FALSE, FALSE, TRUE, FALSE, FALSE, TRUE)
		qdel(organ)

	vessel?.clear_reagents()
	SET_HAIR_STYLE(src, /decl/sprite_accessory/hair/bald, FALSE)
	update_body()

/mob/living/human/skeleton/post_setup(species_name, datum/mob_snapshot/supplied_appearance)
	. = ..()
	make_skeleton()
	grant_basic_undead_equipment()

/mob/living/human/skeleton/Initialize(mapload, species_name, datum/mob_snapshot/supplied_appearance)
	if(!species_name)
		species_name = SPECIES_HUMAN
	. = ..()

/mob/living/human/skeleton/hnoll/Initialize(mapload, species_name, datum/mob_snapshot/supplied_appearance)
	if(!species_name)
		species_name = SPECIES_HNOLL
	. = ..()

/mob/living/human/skeleton/kobaloi/Initialize(mapload, species_name, datum/mob_snapshot/supplied_appearance)
	if(!species_name)
		species_name = SPECIES_KOBALOI
	. = ..()

/mob/living/human/skeleton/meredrake/Initialize(mapload, species_name, datum/mob_snapshot/supplied_appearance)
	if(!species_name)
		var/decl/species/grafadreka/drakes = GET_DECL(/decl/species/grafadreka)
		species_name = drakes.name
	. = ..()
