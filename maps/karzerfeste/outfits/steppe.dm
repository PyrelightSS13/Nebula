/obj/item/clothing/pants/trousers/steppe
	material        = /decl/material/solid/organic/cloth/wool
	color           = "#3a4f52"
	paint_color     = "#3a4f52"

/obj/item/bladed/axe/steppe
	hilt_material   = /decl/material/solid/organic/bone

/obj/item/clothing/shirt/crafted/steppe
	material        = /decl/material/solid/organic/cloth/wool
	color           = "#63b4c0"
	paint_color     = "#63b4c0"

/obj/item/clothing/suit/robe/steppe
	material        = /decl/material/solid/organic/cloth/wool
	color           = "#76898b"
	paint_color     = "#76898b"

/obj/item/clothing/suit/armor/forged/brigandine/steppe
	color           = "#2f3e41"
	paint_color     = "#2f3e41"
	detail_material = /decl/material/solid/organic/bone

/decl/outfit/job/karzerfeste/steppe
	abstract_type = /decl/outfit/job/karzerfeste/steppe
	suit          = /obj/item/clothing/suit/robe/steppe
	uniform       = list(
		/obj/item/clothing/pants/trousers/steppe,
		/obj/item/clothing/shirt/crafted/steppe
	)

/decl/outfit/job/karzerfeste/steppe/representative
	name = "Karzerfeste - Nine Mothers Representative"
	mask = /obj/item/clothing/neck/necklace/prayer_beads/bone

/decl/outfit/job/karzerfeste/steppe/honor_guard
	name = "Karzerfeste - Nine Mothers Honor Guard"
	suit = /obj/item/clothing/suit/armor/forged/brigandine/steppe
	suit_store = /obj/item/bladed/axe/steppe
