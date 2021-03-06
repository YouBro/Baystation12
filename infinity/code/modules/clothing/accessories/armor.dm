/obj/item/clothing/accessory/armguards/tactical
	desc = "A pair of black arm pads reinforced with additional ablative coating. Attaches to a plate carrier."
	armor = list(melee = 50, bullet = 50, laser = 60, energy = 35, bomb = 30, bio = 0, rad = 0)

/obj/item/clothing/accessory/legguards/tactical
	desc = "A pair of armored leg pads reinforced with additional ablative coating. Attaches to a plate carrier."
	armor = list(melee = 50, bullet = 50, laser = 60, energy = 35, bomb = 30, bio = 0, rad = 0)

/obj/item/clothing/accessory/armor/helmcover/scp_cover
	name = "SCP cover"
	desc = "A fabric cover for armored helmets. This one has SCP's colors."
	icon_override = 'infinity/icons/mob/onmob/onmob_accessories.dmi'
	icon = 'infinity/icons/obj/clothing/obj_accessories.dmi'
	icon_state = "scp_cover"
	accessory_icons = list(slot_tie_str = 'infinity/icons/mob/onmob/onmob_accessories.dmi', slot_head_str = 'infinity/icons/mob/onmob/onmob_accessories.dmi')

/obj/item/clothing/accessory/armor/tag/scp
	name = "SCP tag"
	desc = "An armor tag with the words SECURITY CORPORATE PERSONAL printed in red lettering on it."
	icon_override = 'infinity/icons/mob/onmob/onmob_accessories.dmi'
	icon = 'infinity/icons/obj/clothing/obj_accessories.dmi'
	icon_state = "scp_tag"
	accessory_icons = list(slot_tie_str = 'infinity/icons/mob/onmob/onmob_accessories.dmi', slot_wear_suit_str = 'infinity/icons/mob/onmob/onmob_accessories.dmi')

/obj/item/clothing/accessory/armor/tag/zpci
	name = "\improper ZPCI tag"
	desc = "An armor tag with the words ZONE PROTECTION CONTROL INCORPORATED printed in cyan lettering on it."
	icon_state = "pcrctag"

/obj/item/clothing/accessory/armorplate/mainkraft/light
	name = "light metal plate"
	desc = "Thin homemade metal plate. Unlikely to protect from something strong, but it's better than nothing."
	icon_state = "armor_light"
	armor = list(melee = 30, bullet = 35, laser = 35, energy = 10, bomb = 25, bio = 0, rad = 0)
	slowdown = 0.1

/obj/item/clothing/accessory/armorplate/mainkraft/medium
	name = "medium metal plate"
	desc = "Metal plate of medium thickness. Feels heavy. I hope it will be able to help."
	icon_state = "armor_medium"
	armor = list(melee = 40, bullet = 40, laser = 40, energy = 25, bomb = 30, bio = 0, rad = 0)
	slowdown = 0.35

/obj/item/clothing/accessory/armorplate/mainkraft/heavy
	name = "heavy metal plate"
	desc = "A thick sheet of armor that can stop a bullet, it is a pity that as the plate is thick, so heavy."
	icon_state = "armor_merc"
	armor = list(melee = 60, bullet = 60, laser = 60, energy = 40, bomb = 40, bio = 0, rad = 0)
	slowdown = 0.75
