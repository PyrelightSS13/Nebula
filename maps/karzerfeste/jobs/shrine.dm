/*
Shrine Keeper
Shrine Attendant
Shrine Cleric // needs a less D&D name
Gravekeeper
*/

/decl/department/karzerfeste/shrine
	name             = "Shrine Attendants"
	colour           = "#86643c"
	display_color    = "#b98f5e"
	display_priority = 3

/datum/job/karzerfeste/shrine
	abstract_type    = /datum/job/karzerfeste/shrine
	department_types = list(/decl/department/karzerfeste/shrine)
	skill_points     = 20

/datum/job/karzerfeste/shrine/keeper
	title                   = "Shrine Keeper"
	supervisors             = "your vows, and your faith"
	description             = "You are the leader of the local religious order, living and working within the shrine. You are expected to see to both the spiritual and physical health of the populace, as well as travellers, if they can offer appropriate tithe."
	spawn_positions         = 1
	total_positions         = 1
	outfit_type             = /decl/outfit/job/karzerfeste/shrine/keeper
	min_skill               = list(
		SKILL_STONEMASONRY  = SKILL_BASIC,
		SKILL_CARPENTRY     = SKILL_BASIC,
		SKILL_TEXTILES      = SKILL_BASIC,
		SKILL_COOKING       = SKILL_BASIC,
		SKILL_BOTANY        = SKILL_BASIC,
		SKILL_ATHLETICS     = SKILL_BASIC,
		SKILL_LITERACY      = SKILL_ADEPT,
		SKILL_MEDICAL       = SKILL_ADEPT,
		SKILL_ANATOMY       = SKILL_ADEPT,
	)
	max_skill               = list(
		SKILL_MEDICAL       = SKILL_MAX,
		SKILL_ANATOMY       = SKILL_MAX,
	)
	skill_points            = 24
	lock_keys     = list(
		"shrine"      = /decl/material/solid/metal/copper,
		"sunken keep" = /decl/material/solid/organic/bone
	)

/obj/abstract/landmark/start/karzerfeste/shrine_keeper
	name                    = "Shrine Keeper"

/datum/job/karzerfeste/shrine/attendant
	title                   = "Shrine Attendant"
	supervisors             = "the Shrine Keeper, your vows, and your faith"
	description             = "You are an acolyte of the local religious order, living and working within the shrine. Under the direction of the shrine keeper, you are expected to tend to the shrine and the grounds, and to produce food or other goods for use or trade to support the clergy."
	spawn_positions         = 2
	total_positions         = 2
	outfit_type             = /decl/outfit/job/karzerfeste/shrine
	min_skill               = list(
		SKILL_STONEMASONRY  = SKILL_BASIC,
		SKILL_CARPENTRY     = SKILL_BASIC,
		SKILL_TEXTILES      = SKILL_BASIC,
		SKILL_COOKING       = SKILL_BASIC,
		SKILL_BOTANY        = SKILL_BASIC,
		SKILL_ATHLETICS     = SKILL_ADEPT,
		SKILL_MEDICAL       = SKILL_ADEPT,
		SKILL_ANATOMY       = SKILL_ADEPT,
	)
	max_skill               = list(
		SKILL_COOKING       = SKILL_EXPERT,
		SKILL_BOTANY        = SKILL_EXPERT,
		SKILL_MEDICAL       = SKILL_EXPERT,
		SKILL_ANATOMY       = SKILL_EXPERT,
	)

/obj/abstract/landmark/start/karzerfeste/shrine_attendant
	name                    = "Shrine Attendant"

/datum/job/karzerfeste/shrine/cleric
	title                   = "Shrine Cleric"
	supervisors             = "your vows, and your faith"
	description             = "You are an ordained person of faith, living and working in the local shrine either temporarily or long-term. You are battle-trained, but are also a healer."
	spawn_positions         = 2
	total_positions         = 2
	outfit_type             = /decl/outfit/job/karzerfeste/shrine/cleric
	min_skill               = list(
		SKILL_COMBAT        = SKILL_ADEPT,
		SKILL_WEAPONS       = SKILL_ADEPT,
		SKILL_ATHLETICS     = SKILL_ADEPT,
		SKILL_MEDICAL       = SKILL_ADEPT,
		SKILL_ANATOMY       = SKILL_ADEPT
	)
	max_skill               = list(
		SKILL_COMBAT        = SKILL_MAX,
		SKILL_WEAPONS       = SKILL_MAX,
		SKILL_MEDICAL       = SKILL_MAX,
		SKILL_ANATOMY       = SKILL_MAX
	)
	skill_points            = 22

/obj/abstract/landmark/start/karzerfeste/cleric
	name                    = "Shrine Cleric"

// Goes into the dungeon to recover dead adventurers (with the cleric?)
// Needs combat and healing skills + spellcasting
/datum/job/karzerfeste/shrine/gravekeeper
	title                   = "Gravekeeper"
	outfit_type             = /decl/outfit/job/karzerfeste/shrine/gravekeeper

/obj/abstract/landmark/start/karzerfeste/gravekeeper
	name                    = "Gravekeeper"
