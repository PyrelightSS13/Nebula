/obj/structure/flora/growing
	name = "plant"
	desc = "A plant of some kind."
	icon = 'mods/pyrelight/icons/plants/debug.dmi'
	icon_state = "1"
	is_spawnable_type = FALSE
	material = /decl/material/solid/organic/plantmatter

	// State tracking vars.
	var/dead = FALSE
	var/frozen = FALSE
	var/last_tick
	var/amount_grown = 0
	var/harvest_timer = 0
	var/growth_stage = 1
	var/list/fruits
	var/max_fruits = 3

	// Customization vars for use on subtypes.
	var/time_per_growth_stage = 5 SECONDS
	var/max_growth_stage = 5
	var/harvest_time = 5 SECONDS
	var/harvest_tool

/obj/structure/flora/growing/Initialize(ml, _mat, _reinf_mat)
	. = ..()
	START_PROCESSING(SSpyrelight_plants, src)

/obj/structure/flora/growing/Destroy()
	STOP_PROCESSING(SSpyrelight_plants, src)
	return ..()

/obj/structure/flora/growing/init_appearance()
	update_icon()

/obj/structure/flora/growing/Process()

	..()
	if(frozen || dead || last_tick == null)
		last_tick = world.time
		return

	var/time_elapsed = world.time - last_tick
	last_tick = world.time
	if(growth_stage < max_growth_stage)
		amount_grown += time_elapsed
		while(amount_grown >= time_per_growth_stage && growth_stage < max_growth_stage)
			advance_growth()
			amount_grown -= time_per_growth_stage
	else if(length(fruits) < max_fruits)
		harvest_timer += time_elapsed
		while(harvest_timer >= harvest_time && length(fruits) < max_fruits)
			add_fruit()
			harvest_timer -= harvest_time

/obj/structure/flora/growing/attackby(obj/item/O, mob/user)
	if(user.check_intent(I_FLAG_HELP))
		if(!harvest_tool)
			to_chat(user, "You must use your hands to harvest from \the [src].")
			return TRUE
		if(!O.get_tool_quality(harvest_tool))
			var/decl/tool_archetype/tool = GET_DECL(harvest_tool)
			to_chat(user, SPAN_WARNING("You must use \a [tool] to harvest from \the [src]."))
			return TRUE
		harvest(user)
		return TRUE
	return ..()

/obj/structure/flora/growing/attack_hand(mob/user)
	if(user.check_intent(I_FLAG_HELP))
		if(harvest_tool)
			var/decl/tool_archetype/tool = GET_DECL(harvest_tool)
			to_chat(user, SPAN_WARNING("You must use \a [tool] to harvest from \the [src]."))
		else
			harvest(user)
		return TRUE
	return ..()

/obj/structure/flora/growing/proc/harvest(var/mob/user)
	if(length(fruits))
		var/obj/item/harvest = fruits[1]
		harvest.dropInto(get_turf(src))
		to_chat(user, SPAN_NOTICE("You harvest \a [harvest] from \the [src]."))
		user.put_in_hands(harvest)
		fruits -= harvest
		update_icon()
	else
		to_chat(user, SPAN_WARNING("There is nothing to harvest on \the [src]."))

/obj/structure/flora/growing/proc/get_possible_fruits()
	return

/obj/structure/flora/growing/proc/add_fruit()
	var/list/possible_fruits = get_possible_fruits()
	if(length(possible_fruits))
		LAZYADD(fruits, pick(possible_fruits))
		update_icon()

/obj/structure/flora/growing/proc/advance_growth()
	growth_stage++
	update_icon()

/obj/structure/flora/growing/on_update_icon()
	. = ..()
	cut_overlays()
	if(dead)
		icon_state = "dead"
	else
		icon_state = num2text(growth_stage)
		for(var/i in 1 to length(fruits))
			add_overlay("fruit[i]")
