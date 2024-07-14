// This is included in main code due to the invasive overrides needed in human life processing.
/decl/trait/undead
	name = "Undead"
	description = "Your body is dead, but remains animated through some supernatural force."
	levels = list(TRAIT_LEVEL_MINOR, TRAIT_LEVEL_MODERATE) // Moderate means skeleton, minor means zombie.

/mob/living/human/ssd_check()
	if(has_trait(/decl/trait/undead))
		return FALSE
	return ..()
