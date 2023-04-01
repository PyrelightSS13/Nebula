/obj/structure/flora/growing/nightweave
	name = "nightweave"
	is_spawnable_type = TRUE

/obj/structure/flora/growing/nightweave/get_possible_fruits()
	var/static/list/possible_fruits = list(/obj/item/chems/food/fruit/flower_nightweave)
	return possible_fruits
