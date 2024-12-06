/mob/living/deity
	var/silenced = 0
	var/list/phenomena = list()
	var/list/intent_phenomena = list()
	var/static/list/control_types = list("control", "controlshift", "shift")


/mob/living/deity/Initialize()
	. = ..()
	for(var/decl/intent/intent as anything in decls_repository.get_decls_of_type_unassociated(/decl/intent)) //Just in case we somehow remove/add a new intent #futureproofing
		populate_intent(intent)
	set_phenomenon(add_phenomenon(/datum/phenomenon/communicate), GET_DECL(/decl/intent/disarm), "shift")
	set_phenomenon(add_phenomenon(/datum/phenomenon/punish), GET_DECL(/decl/intent/help), "control")
	set_phenomenon(add_phenomenon(/datum/phenomenon/point), GET_DECL(/decl/intent/help), "controlshift")
	set_phenomenon(add_phenomenon(/datum/phenomenon/conversion), GET_DECL(/decl/intent/grab), "shift")
	set_phenomenon(add_phenomenon(/datum/phenomenon/forced_conversion), GET_DECL(/decl/intent/grab), "control")

/mob/living/deity/proc/silence(amount)
	if(!silenced)
		to_chat(src, SPAN_WARNING("You've been silenced! Your phenomena are disabled!"))
		var/obj/screen/intent/deity/SD = istype(hud_used) && hud_used.action_intent
		if(istype(SD))
			SD.color = "#ff0000"
	silenced += amount
	for(var/phenom in phenomena) //Also make it so that you don't do cooldowns.
		var/datum/phenomenon/P = phenomena[phenom]
		if(P.refresh_time)
			P.refresh_time += amount

/mob/living/deity/handle_regular_status_updates()
	. = ..()
	if(.)
		if(silenced > 0)
			silenced--
			if(!silenced)
				to_chat(src, SPAN_NOTICE("You are no longer silenced."))
				var/obj/screen/intent/deity/SD = istype(hud_used) && hud_used.action_intent
				if(istype(SD))
					SD.color = null
		if(power_per_regen < 0 || power < power_min)
			adjust_power(power_per_regen)

/mob/living/deity/proc/add_phenomenon(phenomena_type)
	LAZYINITLIST(phenomena)
	for(var/P in phenomena)
		if(istype(phenomena[P], phenomena_type))
			return
	var/datum/phenomenon/P = new phenomena_type(src)
	phenomena[P.name] = P
	return P

/mob/living/deity/proc/remove_phenomena_from_intent(decl/intent/intent, modifier, update = 1)
	var/list/intent_list = intent_phenomena[intent]
	intent_list[modifier] = null
	if(update)
		update_phenomena_bindings()

/mob/living/deity/proc/remove_phenomenon(to_remove)
	var/datum/phenomenon/P = phenomena[to_remove]
	phenomena -= to_remove // this isn't going to work, is it?
	for(var/intent in intent_phenomena)
		var/list/intent_list = intent_phenomena[intent]
		for(var/mod in intent_list)
			if(intent_list[mod] == P)
				intent_list[mod] = null
	var/obj/screen/intent/deity/SD = istype(hud_used) && hud_used.action_intent
	if(istype(SD))
		SD.update_text()
	update_phenomena()
	update_phenomena_bindings()
	if(selected == to_remove)
		selected = null
	qdel(P)

/mob/living/deity/proc/populate_intent(decl/intent/intent)
	LAZYDISTINCTADD(intent_phenomena[intent], control_types)

/mob/living/deity/proc/set_phenomenon(datum/phenomenon/phenomenon, decl/intent/intent, modifiers)
	if(!LAZYACCESS(intent_phenomena, intent))
		populate_intent(intent)
	var/list/intent_list = intent_phenomena[intent]
	intent_list[modifiers] = phenomenon

/mob/living/deity/proc/get_phenomenon(shift = 0, control = 0)
	var/list/intent_list = intent_phenomena[get_intent()]
	if(intent_list)
		var/type = ""
		if(shift)
			type = "shift"
		if(control)
			type = "control[type]"
		if(intent_list[type])
			return intent_list[type]
	return null