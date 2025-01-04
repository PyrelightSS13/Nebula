/obj/item/clothing/shoes/craftable/kingdom
	color       = COLOR_GRAY20
	paint_color = COLOR_GRAY20
	material    = /decl/material/solid/organic/leather

/obj/item/clothing/shirt/gambeson/kingdom
	color       = COLOR_PALE_PURPLE_GRAY
	paint_color = COLOR_PALE_PURPLE_GRAY

/obj/item/clothing/shirt/crafted/linen/kingdom
	color       = COLOR_PALE_PURPLE_GRAY
	paint_color = COLOR_PALE_PURPLE_GRAY

/obj/item/clothing/pants/trousers/linen/kingdom
	color       = COLOR_PURPLE
	paint_color = COLOR_PURPLE

/obj/item/clothing/suit/mantle/kingdom
	material    = /decl/material/solid/organic/cloth/linen
	color       = COLOR_PURPLE
	paint_color = COLOR_PURPLE

/obj/item/clothing/suit/armor/forged/banded/kingdom
	material        = /decl/material/solid/metal/bronze
	detail_material = /decl/material/solid/metal/gold

/obj/item/clothing/neck/necklace/kingdom
	material = /decl/material/solid/metal/gold

/obj/item/bladed/longsword/kingdom
	material        = /decl/material/solid/metal/steel
	hilt_material   = /decl/material/solid/metal/steel
	guard_material  = /decl/material/solid/metal/gold
	pommel_material = /decl/material/solid/metal/gold

/decl/outfit/job/karzerfeste/kingdom
	abstract_type = /decl/outfit/job/karzerfeste/kingdom
	uniform = list(
		/obj/item/clothing/pants/trousers/linen/kingdom,
		/obj/item/clothing/shirt/crafted/linen/kingdom
	)

/decl/outfit/job/karzerfeste/kingdom/representative
	name    = "Karzerfeste - Kingdom Representative"
	mask    = /obj/item/clothing/neck/necklace/kingdom
	shoes   = /obj/item/clothing/shoes/craftable/kingdom
	uniform = list(
		/obj/item/clothing/pants/trousers/linen/kingdom,
		/obj/item/clothing/shirt/crafted/linen/kingdom,
		/obj/item/clothing/suit/mantle/kingdom
	)

/decl/outfit/job/karzerfeste/kingdom/honor_guard
	name       = "Karzerfeste - Kingdom Honor Guard"
	uniform    = list(
		/obj/item/clothing/pants/trousers/linen/kingdom,
		/obj/item/clothing/shirt/gambeson/kingdom
	)
	suit       = /obj/item/clothing/suit/armor/forged/banded/kingdom
	suit_store = /obj/item/bladed/longsword/kingdom
