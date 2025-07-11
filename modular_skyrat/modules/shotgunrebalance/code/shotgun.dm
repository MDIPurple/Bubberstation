/obj/item/ammo_casing/shotgun
	icon = 'modular_skyrat/modules/shotgunrebalance/icons/shotshells.dmi'
	desc = "A 12 gauge iron slug."
	custom_materials = AMMO_MATS_SHOTGUN

// THE BELOW TWO SLUGS ARE NOTED AS ADMINONLY AND HAVE ***EIGHTY*** WOUND BONUS. NOT BARE WOUND BONUS. FLAT WOUND BONUS.
/obj/item/ammo_casing/shotgun/executioner
	name = "expanding shotgun slug"
	desc = "A 12 gauge fragmenting slug purpose-built to annihilate flesh on impact."
	can_be_printed = FALSE // noted as adminonly in code/modules/projectiles/projectile/bullets/shotgun.dm.

/obj/item/ammo_casing/shotgun/pulverizer
	name = "pulverizer shotgun slug"
	desc = "A 12 gauge uranium slug purpose-built to break bones on impact."
	can_be_printed = FALSE // noted as adminonly in code/modules/projectiles/projectile/bullets/shotgun.dm

/obj/item/ammo_casing/shotgun/incendiary
	name = "incendiary slug"
	desc = "A 12 gauge magnesium slug meant for \"setting shit on fire and looking cool while you do it\".\
	<br><br>\
	<i>INCENDIARY: Leaves a trail of fire when shot, sets targets aflame.</i>"
	custom_materials = AMMO_MATS_SHOTGUN_PLASMA

/obj/item/ammo_casing/shotgun/ion
	custom_materials = AMMO_MATS_SHOTGUN_TIDE

/obj/item/ammo_casing/shotgun/scatterlaser
	custom_materials = AMMO_MATS_SHOTGUN_TIDE

/obj/item/ammo_casing/shotgun/techshell
	can_be_printed = FALSE // techshell... casing! so not really usable on its own but if you're gonna make these go raid a seclathe.

/obj/item/ammo_casing/shotgun/improvised
	can_be_printed = FALSE // this is literally made out of scrap why would you use this if you have a perfectly good ammolathe

/obj/item/ammo_casing/shotgun/dart/bioterror
	can_be_printed = FALSE // PRELOADED WITH TERROR CHEMS MAYBE LET'S NOT

/obj/item/ammo_casing/shotgun/dragonsbreath
	advanced_print_req = TRUE
	custom_materials = AMMO_MATS_SHOTGUN_PLASMA

/obj/item/ammo_casing/shotgun/stunslug
	name = "taser slug"
	desc = "A 12 gauge silver slug with electrical microcomponents meant to incapacitate targets."
	can_be_printed = FALSE // comment out if you want rocket tag shotgun ammo being printable

/obj/item/ammo_casing/shotgun/meteorslug
	name = "meteor slug"
	desc = "A 12 gauge shell rigged with CMC technology which launches a heap of matter with great force when fired.\
	<br><br>\
	<i>METEOR: Fires a meteor-like projectile that knocks back movable objects like people and airlocks.</i>"
	can_be_printed = FALSE // techshell. assumed intended balance being a pain to assemble

/obj/item/ammo_casing/shotgun/frag12
	name = "FRAG-12 slug"
	desc = "A 12 gauge shell containing high explosives designed for defeating some barriers and light vehicles, disrupting IEDs, or intercepting assistants.\
	<br><br>\
	<i>HIGH EXPLOSIVE: Explodes on impact.</i>"
	can_be_printed = FALSE // techshell. assumed intended balance being a pain to assemble

/obj/item/ammo_casing/shotgun/pulseslug
	can_be_printed = FALSE // techshell. assumed intended balance being a pain to assemble

/obj/item/ammo_casing/shotgun/incapacitate
	name = "hornet's nest shell"
	desc = "A 12 gauge shell filled with some kind of material that excels at incapacitating targets. Contains a lot of pellets, \
	sacrificing individual pellet strength for sheer stopping power in what's best described as \"spitting distance\".\
	<br><br>\
	<i>HORNET'S NEST: Fire an overwhelming amount of projectiles in a single shot.</i>"
	can_be_printed = FALSE

/obj/item/ammo_casing/shotgun/buckshot
	name = "buckshot shell"
	desc = "A 12 gauge buckshot shell."
	icon_state = "gshell"
	projectile_type = /obj/projectile/bullet/pellet/shotgun_buckshot
	pellets = 8 // 8 * 6 for 48 damage if every pellet hits, we want to keep lethal shells ~50 damage
	variance = 25

/obj/projectile/bullet/pellet/shotgun_buckshot
	name = "buckshot pellet"
	damage = 6
	weak_against_armour = TRUE

/obj/item/ammo_casing/shotgun/rubbershot
	name = "rubber shot"
	desc = "A shotgun casing filled with densely-packed rubber balls, used to incapacitate crowds from a distance."
	icon_state = "rshell"
	projectile_type = /obj/projectile/bullet/pellet/shotgun_rubbershot
	pellets = 6 // 6 * 10 for 60 stamina damage, + some small amount of brute, we want to keep less lethal shells ~60
	variance = 20
	harmful = FALSE

/obj/projectile/bullet/pellet/shotgun_rubbershot
	weak_against_armour = TRUE
	stamina = 10

/obj/item/ammo_casing/shotgun/magnum
	name = "magnum blockshot shell"
	desc = "A 12 gauge shell that fires fewer, larger pellets than buckshot. A favorite of TerraGov anti-piracy enforcers, \
		especially against the likes of vox."
	icon_state = "magshell"
	projectile_type = /obj/projectile/bullet/pellet/shotgun_buckshot/magnum
	pellets = 4 // Half as many pellets for twice the damage each pellet, same overall damage as buckshot
	variance = 20
	advanced_print_req = TRUE

/obj/projectile/bullet/pellet/shotgun_buckshot/magnum
	name = "magnum blockshot pellet"
	damage = 15
	wound_bonus = 10
	weak_against_armour = FALSE

/obj/projectile/bullet/pellet/shotgun_buckshot/magnum/Initialize(mapload)
	. = ..()
	transform = transform.Scale(1.25, 1.25)

/obj/item/ammo_casing/shotgun/express
	name = "express pelletshot shell"
	desc = "A 12 gauge shell that fires more and smaller projectiles than buckshot. Considered taboo to speak about \
		openly near teshari, for reasons you would be personally blessed to not know at least some of."
	icon_state = "expshell"
	projectile_type = /obj/projectile/bullet/pellet/shotgun_buckshot/express
	pellets = 12 // 1.3x The pellets for 0.6x the damage, same overall damage as buckshot
	variance = 30 // Slightly wider spread than buckshot

/obj/projectile/bullet/pellet/shotgun_buckshot/express
	name = "express buckshot pellet"
	damage = 5.5
	wound_bonus = 10
	weak_against_armour = FALSE

/obj/projectile/bullet/pellet/shotgun_buckshot/express/Initialize(mapload)
	. = ..()
	transform = transform.Scale(0.75, 0.75)

/obj/item/ammo_casing/shotgun/flechette
	name = "flechette shell"
	desc = "A 12 gauge flechette shell that specializes in ripping armored targets apart. These are exceptionally strong against armored targets."
	icon_state = "fshell"
	projectile_type = /obj/projectile/bullet/pellet/shotgun_buckshot/flechette
	pellets = 5
	variance = 15
	custom_materials = AMMO_MATS_SHOTGUN_FLECH
	advanced_print_req = TRUE

/obj/projectile/bullet/pellet/shotgun_buckshot/flechette
	name = "flechette"
	icon = 'modular_skyrat/modules/shotgunrebalance/icons/projectiles.dmi'
	icon_state = "flechette"
	damage = 7
	armour_penetration = 40
	wound_bonus = 0
	exposed_wound_bonus = 0
	sharpness = SHARP_EDGED //Did you knew flechettes fly sideways into people
	damage_falloff_tile = -0.7 // Five tiles will halve the effectiveness dramatically
	wound_falloff_tile = -3

/obj/projectile/bullet/pellet/shotgun_buckshot/flechette/Initialize(mapload)
	. = ..()
	SpinAnimation()

/obj/item/ammo_casing/shotgun/beehive
	name = "hornet shell"
	desc = "A less-lethal 12 gauge shell that fires four pellets capable of bouncing off nearly any surface \
		and re-aiming themselves toward the nearest target. They will, however, go for <b>any target</b> nearby."
	icon_state = "cnrshell"
	projectile_type = /obj/projectile/bullet/pellet/shotgun_buckshot/beehive
	pellets = 4
	variance = 15
	fire_sound = 'sound/items/weapons/taser.ogg'
	harmful = FALSE
	custom_materials = AMMO_MATS_SHOTGUN_HIVE
	advanced_print_req = TRUE

/obj/projectile/bullet/pellet/shotgun_buckshot/beehive
	name = "hornet flechette"
	icon = 'modular_skyrat/modules/shotgunrebalance/icons/projectiles.dmi'
	icon_state = "hornet"
	damage = 4
	stamina = 15
	damage_falloff_tile = -1
	stamina_falloff_tile = -1
	wound_bonus = 5
	exposed_wound_bonus = 5
	wound_falloff_tile = 0
	sharpness = NONE
	ricochets_max = 5
	ricochet_chance = 200
	ricochet_auto_aim_angle = 60
	ricochet_auto_aim_range = 8
	ricochet_decay_damage = 1
	ricochet_decay_chance = 1
	ricochet_incidence_leeway = 0 //nanomachines son
	homing_turn_speed = 25
	homing_inaccuracy_min = 10
	homing_inaccuracy_max = 80

/obj/item/ammo_casing/shotgun/antitide
	name = "stardust shell"
	desc = "A highly experimental shell filled with nanite electrodes that will embed themselves in soft targets. The electrodes are charged from kinetic movement which means moving targets will get punished more. it also cannot be reflected by martial art"
	icon_state = "lasershell"
	projectile_type = /obj/projectile/bullet/pellet/shotgun_buckshot/antitide
	pellets = 1
	variance = 1
	harmful = FALSE
	fire_sound = 'sound/items/weapons/taser.ogg'
	custom_materials = AMMO_MATS_SHOTGUN_TIDE
	advanced_print_req = TRUE

/obj/projectile/bullet/pellet/shotgun_buckshot/antitide
	name = "electrode"
	icon = 'modular_skyrat/modules/shotgunrebalance/icons/projectiles.dmi'
	icon_state = "stardust"
	damage = 15
	stamina = 33
	damage_falloff_tile = -0.2
	stamina_falloff_tile = -0.3
	wound_bonus = 40
	exposed_wound_bonus = 40
	stutter = 3 SECONDS
	jitter = 5 SECONDS
	eyeblur = 1 SECONDS
	sharpness = NONE
	range = 12
	embed_type = /datum/embedding/shotgun_buckshot/antitide
	reflectable = NONE

/datum/embedding/shotgun_buckshot/antitide
	embed_chance = 200
	pain_chance = 95
	fall_chance = 10
	jostle_chance = 10
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 1
	pain_mult = 3
	rip_time = 1 SECONDS

/obj/projectile/bullet/pellet/shotgun_buckshot/antitide/on_range()
	do_sparks(1, TRUE, src)
	..()

/obj/item/ammo_casing/shotgun/frangible
	name = "frangible slug"
	desc = "A weak anti materiel shell intended for dislodging airlock, breaking down barricades and structures. Not effective against people."
	icon_state = "breacher"
	projectile_type = /obj/projectile/bullet/frangible_slug

/obj/projectile/bullet/frangible_slug
	name = "frangible slug"
	damage = 15 //I'd kill you if you manage to kill someone with this shit
	wound_bonus = 30
	exposed_wound_bonus = 30
	demolition_mod = 2

/obj/projectile/bullet/frangible_slug/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	if(istype(target, /obj/structure/window) || istype(target, /obj/machinery/door/airlock) || istype(target, /obj/structure/grille) || istype(target,/obj/structure/door_assembly) || istype(target,/obj/machinery/door/window/))
		if(isobj(target))
			demolition_mod = 50
			damage = 30
		else
			demolition_mod = 2
			damage = 15

/obj/item/ammo_casing/shotgun/hunter
	name = "hunter slug shell"
	desc = "A 12 gauge slug shell that fires specially designed slugs that deal extra damage to the local planetary fauna"
	icon_state = "huntershell"
	projectile_type = /obj/projectile/bullet/shotgun_slug/hunter

/obj/projectile/bullet/shotgun_slug/hunter
	name = "12g hunter slug"
	damage = 20

/obj/projectile/bullet/shotgun_slug/hunter/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/bane, mob_biotypes = MOB_BEAST, damage_multiplier = 6)

/obj/item/ammo_casing/shotgun/honkshot
	name = "confetti shell"
	desc = "A 12 gauge buckshot shell thats been filled to the brim with confetti, yippie!"
	icon_state = "honkshell"
	projectile_type = /obj/projectile/bullet/honkshot
	pellets = 12
	variance = 35
	fire_sound = 'sound/items/bikehorn.ogg'
	harmful = FALSE

/obj/projectile/bullet/honkshot
	name = "confetti"
	damage = 0
	sharpness = NONE
	shrapnel_type = NONE
	impact_effect_type = null
	ricochet_chance = 0
	jitter = 1 SECONDS
	eyeblur = 1 SECONDS
	hitsound = SFX_CLOWN_STEP
	range = 4
	icon_state = "guardian"

/obj/projectile/bullet/honkshot/Initialize(mapload)
	. = ..()
	SpinAnimation()
	range = rand(1, 4)
	color = pick(
		COLOR_PRIDE_RED,
		COLOR_PRIDE_ORANGE,
		COLOR_PRIDE_YELLOW,
		COLOR_PRIDE_GREEN,
		COLOR_PRIDE_BLUE,
		COLOR_PRIDE_PURPLE,
	)

// This proc addition will spawn a decal on each tile the projectile travels over
/obj/projectile/bullet/honkshot/Moved(atom/old_loc, movement_dir, forced, list/old_locs, momentum_change = TRUE)
	new /obj/effect/decal/cleanable/confetti(get_turf(old_loc))
	return ..()

// This proc addition will make living humanoids do a flip animation when hit by the projectile
/obj/projectile/bullet/honkshot/on_hit(atom/target, blocked, pierce_hit)
	if(!isliving(target))
		return ..()
	target.SpinAnimation(7,1)
	return ..()

// This proc addition adds a spark effect when the projectile expires/hits
/obj/projectile/bullet/honkshot/on_range()
	do_sparks(1, TRUE, src)
	return ..()

/obj/item/ammo_casing/shotgun/beanbag
	harmful = FALSE
