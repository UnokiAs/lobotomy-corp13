/obj/item/gun/ego_gun/correctional
	name = "correctional"
	desc = "In here, you're with us. Forever."
	icon_state = "correctional"
	inhand_icon_state = "correctional"
	special = "This weapon fires 6 pellets."
	ammo_type = /obj/item/ammo_casing/caseless/ego_correctional
	weapon_weight = WEAPON_HEAVY
	fire_delay = 7
	fire_sound = 'sound/weapons/gun/shotgun/shot_auto.ogg'

	attribute_requirements = list(
							FORTITUDE_ATTRIBUTE = 40,
							JUSTICE_ATTRIBUTE = 60
							)

/obj/item/gun/ego_gun/hornet
	name = "hornet"
	desc = "The kingdom needed to stay prosperous, and more bees were required for that task. \
	The projectiles relive the legacy of the kingdom as they travel toward the target."
	icon_state = "hornet"
	inhand_icon_state = "hornet"
	special = "This weapon fires as fast as you pull the trigger"
	ammo_type = /obj/item/ammo_casing/caseless/ego_hornet
	weapon_weight = WEAPON_HEAVY
	fire_delay = 0.3
	fire_sound = 'sound/weapons/gun/rifle/shot.ogg'
	force = 30
	damtype = RED_DAMAGE
	armortype = RED_DAMAGE

	attribute_requirements = list(
							FORTITUDE_ATTRIBUTE = 60
							)

/obj/item/gun/ego_gun/hornet/EgoAttackInfo(mob/user)
	if(chambered && chambered.BB)
		return "<span class='notice'>Its bullets deal [chambered.BB.damage] [chambered.BB.damage_type] damage. Weapon does [force] [damtype] damage in melee.</span>"
	return


/obj/item/gun/ego_gun/hatred
	name = "in the name of love and hate"
	desc = "A magic wand surging with the lovely energy of a magical girl. \
	The holy light can cleanse the body and mind of every villain, and they shall be born anew."
	icon_state = "hatred"
	inhand_icon_state = "hatred"
	special = "This weapon heals humans that it hits."
	ammo_type = /obj/item/ammo_casing/caseless/ego_hatred
	weapon_weight = WEAPON_HEAVY
	fire_delay = 8
	fire_sound = 'sound/abnormalities/hatredqueen/attack.ogg'

	attribute_requirements = list(
							FORTITUDE_ATTRIBUTE = 60,
							JUSTICE_ATTRIBUTE = 60
							)

/obj/item/gun/ego_gun/hatred/EgoAttackInfo(mob/user)
	if(chambered && chambered.BB)
		return "<span class='notice'>Its bullets deal [chambered.BB.damage] randomly chosen damage.</span>"
	return

/obj/item/gun/ego_gun/magicbullet
	name = "magic bullet"
	desc = "Though the original's power couldn't be fully extracted, the magic this holds is still potent. \
	The weapon's bullets travel across the corridor, along the horizon."
	icon_state = "magic_bullet"
	inhand_icon_state = "magic_bullet"
	special = "This weapon fires extremely slowly. \
		This weapon pierces all targets. \
		This weapon fires significantly faster wearing the matching armor"
	ammo_type = /obj/item/ammo_casing/caseless/ego_magicbullet
	weapon_weight = WEAPON_HEAVY
	fire_delay = 24	//Put on the armor, jackass.
	fire_sound = 'sound/abnormalities/freischutz/shoot.ogg'

	attribute_requirements = list(
							TEMPERANCE_ATTRIBUTE = 60
							)

/obj/item/gun/ego_gun/magicbullet/before_firing(atom/target, mob/user)
	fire_delay = 24
	var/mob/living/carbon/human/myman = user
	var/obj/item/clothing/suit/armor/ego_gear/magicbullet/Y = myman.get_item_by_slot(ITEM_SLOT_OCLOTHING)
	if(istype(Y))
		fire_delay = 16
	..()

//Funeral guns have two different names;
//Solemn Lament is the white gun, Solemn Vow is the black gun.
//Likewise, they emit butterflies of those respective colors.
/obj/item/gun/ego_gun/pistol/solemnlament
	name = "solemn lament"
	desc = "A pistol which carries with it a lamentation for those that live. \
	Can feathers gain their own wings?"
	icon_state = "solemnlament"
	inhand_icon_state = "solemnlament"
	ammo_type = /obj/item/ammo_casing/caseless/ego_solemnlament
	burst_size = 1
	fire_delay = 0
	fire_sound = 'sound/abnormalities/funeral/spiritgunwhite.ogg'
	fire_sound_volume = 30

	attribute_requirements = list(
							JUSTICE_ATTRIBUTE = 60
	)

/obj/item/gun/ego_gun/pistol/solemnvow
	name = "solemn vow"
	desc = "A pistol which carries with it grief for those who have perished. \
	Even with wings, no feather can leave this place."
	icon_state = "solemnvow"
	inhand_icon_state = "solemnvow"
	ammo_type = /obj/item/ammo_casing/caseless/ego_solemnvow
	burst_size = 1
	fire_delay = 0
	fire_sound = 'sound/abnormalities/funeral/spiritgunblack.ogg'
	fire_sound_volume = 30

	attribute_requirements = list(
							JUSTICE_ATTRIBUTE = 60
	)

/obj/item/gun/ego_gun/loyalty
	name = "loyalty"
	desc = "Courtesy of the 16th Ego rifleman's brigade."
	icon_state = "loyalty"
	inhand_icon_state = "loyalty"
	ammo_type = /obj/item/ammo_casing/caseless/ego_loyalty
	weapon_weight = WEAPON_HEAVY
	spread = 8
	special = "This weapon fires 850 rounds per minute. \
		This weapon has IFF capabilities."
	fire_sound = 'sound/weapons/gun/smg/mp7.ogg'
	attribute_requirements = list(
							FORTITUDE_ATTRIBUTE = 60
	)

/obj/item/gun/ego_gun/loyalty/Initialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.07 SECONDS)

//Just a funny gold soda pistol. It was originally meant to just be a golden meme weapon, now it is the only pale gun, lol
/obj/item/gun/ego_gun/pistol/soda/executive
	name = "executive"
	desc = "A pistol painted in black with a gold finish. Whenever this EGO is used, a faint scent of fillet mignon wafts through the air."
	icon_state = "executive"
	inhand_icon_state = "executive"
	ammo_type = /obj/item/ammo_casing/caseless/ego_executive
	attribute_requirements = list(
							JUSTICE_ATTRIBUTE = 40
	)
