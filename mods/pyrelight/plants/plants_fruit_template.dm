/datum/fruit_segment

	var/name
	var/desc
	var/object_type = /obj/item/chems/food/fruit_segment
	var/reagent_total
	var/list/reagents
	var/icon_state

	var/contributes_to_fruit_icon = TRUE
	var/contributes_to_fruit_reagents = TRUE

	var/examine_info
	var/examine_info_skill = SKILL_BOTANY
	var/examine_info_rank = SKILL_BASIC

	var/dissect_amount = 1
	var/dissect_tool = TOOL_SCALPEL
	var/dissect_skill = SKILL_BOTANY
	var/dissect_skill_requirement = SKILL_ADEPT

/datum/fruit_segment/New(var/_name, var/_desc, var/_amt, var/_reagents, var/_examine_info, var/_examine_skill_rank, var/_examine_skill)
	if(_name)
		name = _name
	if(_desc)
		desc = _desc
	if(_reagents)
		reagents = _reagents
	if(_examine_info)
		examine_info = _examine_info
	if(_examine_skill_rank)
		examine_info_rank = _examine_skill_rank
	if(_examine_skill)
		examine_info_skill = _examine_skill
	dissect_amount = _amt
	reagents = _reagents
	reagent_total = 0
	if(length(reagents))
		for(var/rid in reagents)
			reagent_total += reagents[rid]
	..()

/datum/fruit_segment/proc/can_harvest_with(var/obj/item/prop, var/mob/user)
	return FALSE

/datum/fruit_segment/proc/on_harvest(var/obj/item/prop, var/mob/user, var/obj/item/chems/food/fruit/fruit)
	if(!object_type)
		return FALSE
	var/obj/item/product = new object_type(get_turf(fruit), prop?.material?.type, src, fruit)
	user.put_in_hands(product)
	to_chat(user, SPAN_NOTICE("You remove \a [product] from \the [fruit][prop ? "with \the [prop]" : ""]."))
	fruit.remove_segment(src)
	return TRUE

/datum/fruit_segment/proc/apply_fruit_appearance(var/obj/item/chems/food/fruit/fruit, var/count = 0)
	return

/datum/fruit_segment/petal
	icon_state = "petal"
	dissect_tool = null

/datum/fruit_segment/stamen
	icon_state = "stamen"

/datum/fruit_segment/stigma
	icon_state = "stigma"
	contributes_to_fruit_reagents = FALSE
