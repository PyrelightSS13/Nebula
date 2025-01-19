#define LANGUAGE_TAJARA "Siik'maas"

/obj/item
	var/_feline_onmob_icon

/obj/item/setup_sprite_sheets()
	. = ..()
	if(_feline_onmob_icon && !(BODYTYPE_FELINE in sprite_sheets))
		LAZYSET(sprite_sheets, BODYTYPE_FELINE, _feline_onmob_icon)

/obj/item/clothing/setup_equip_flags()
	. = ..()
	if(bodytype_equip_flags & BODY_EQUIP_FLAG_EXCLUDE)
		bodytype_equip_flags |= BODY_EQUIP_FLAG_FELINE

/mob/living/human/tajaran/Initialize(mapload, species_name, datum/mob_snapshot/supplied_appearance)
	. = ..(species_name = SPECIES_TAJARA)
