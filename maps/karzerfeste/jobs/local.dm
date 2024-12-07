/decl/department/karzerfeste/locals
	name                   = "Locals"
	colour                 = "#40684a"
	display_color          = "#8cc4a8"
	display_priority       = -1

/datum/job/karzerfeste/local
	abstract_type          = /datum/job/karzerfeste/local
	department_types       = list(/decl/department/karzerfeste/locals)
	selection_color        = "#6a8678"

/datum/job/karzerfeste/local/traveller
	title                  = "Traveller"
	supervisors            = "your conscience"
	description            = "You have travelled to this area from elsewhere. You may be a vagabond, a wastrel, a nomad, or just passing through on your way to somewhere else. How long you're staying and where you're headed is up to you entirely."
	spawn_positions        = -1
	total_positions        = -1
	outfit_type            = /decl/outfit/job/karzerfeste/traveller
	skill_points           = 20

/obj/abstract/landmark/start/karzerfeste/traveller
	name                  = "Traveller"

/datum/job/karzerfeste/local/forester
	title                  = "Forester"
	alt_titles             = list("Hunter")
	description            = "You are at home in nature, whether you're fishing, hunting wild game, or chopping timber for firewood and construction."
	supervisors            = "nature"
	spawn_positions        = 1
	total_positions        = 1
	outfit_type            = /decl/outfit/job/karzerfeste/forester
	min_skill              = list(
		SKILL_HAULING      = SKILL_ADEPT, // overall physical activity
		SKILL_HUSBANDRY    = SKILL_BASIC, // handling and caring for animals
		SKILL_BOTANY       = SKILL_BASIC, // growing and harvesting plants, trees, etc
		SKILL_COOKING      = SKILL_BASIC, // butchery
		SKILL_CARPENTRY    = SKILL_ADEPT, // tree felling
	)
	skill_points           = 22

/obj/abstract/landmark/start/karzerfeste/forester
	name                   = "Forester"

/datum/job/karzerfeste/local/farmer
	title                  = "Farmer"
	alt_titles             = list("Herbalist")
	supervisors            = "your own self-interest"
	description            = "You grow crops both for your own subsistence and to sell to others like the innkeeper or general store. You are knowledgeable of local plants grown for sustenance, but your knowledge of niche herbs may be spottier."
	spawn_positions        = 3
	total_positions        = 3
	outfit_type            = /decl/outfit/job/karzerfeste/farmer
	min_skill              = list(
		SKILL_HAULING      = SKILL_ADEPT, // farming can be demanding work
		SKILL_HUSBANDRY    = SKILL_ADEPT, // must be able to pick up and milk animals
		SKILL_BOTANY       = SKILL_ADEPT, // must be skilled enough to have plants reliably survive when planted
	)
	skill_points           = 18

/obj/abstract/landmark/start/karzerfeste/farmer
	name                   = "Farmer"

/datum/job/karzerfeste/local/miner
	title                  = "Miner"
	description            = "You mine ores from the mountain, and occasionally refine them, too. The only limit to your potential bounty is your own hard work and ingenuity... and the kobaloi in the caves."
	supervisors            = "the consequences of your actions"
	spawn_positions        = 1
	total_positions        = 1
	outfit_type            = /decl/outfit/job/karzerfeste/miner
	min_skill              = list(
		SKILL_HAULING      = SKILL_ADEPT, // general physical activity
		SKILL_METALWORK    = SKILL_BASIC, // ore smelting, metallurgy
		SKILL_STONEMASONRY = SKILL_BASIC, // experienced working with stone
		SKILL_SCULPTING    = SKILL_BASIC, // producing clay molds, firing pottery
	)
	skill_points           = 20

/obj/abstract/landmark/start/karzerfeste/miner
	name                = "Miner"
