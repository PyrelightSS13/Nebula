/decl/department/karzerfete/kingdom
	name             = "Splinter Kingdom Emissaries"
	colour           = "#584068"
	display_color    = "#8965a1"
	display_priority = 1

/datum/job/karzerfeste/kingdom
	abstract_type    = /datum/job/karzerfeste/kingdom
	department_types = list(/decl/department/karzerfete/kingdom)

/datum/job/karzerfeste/kingdom/representative
	title            = "Kingdom Representative"
	alt_titles       = list("Baron", "Baroness") // too Lifeweb? Shooting for Dwarf Fortress
	outfit_type      = /decl/outfit/job/karzerfeste/kingdom/representative
	selection_color  =  "#584068"
	head_position    = TRUE

/obj/abstract/landmark/start/karzerfeste/kingdom_representative
	name             = "Kingdom Representative"

/datum/job/karzerfeste/kingdom/honor_guard
	title            = "Kingdom Honor Guard"
	outfit_type      =  /decl/outfit/job/karzerfeste/kingdom/honor_guard
	selection_color  = "#8965a1"

/obj/abstract/landmark/start/karzerfeste/kingdom_honor_guard
	name             = "Kingdom Honor Guard"
