

-- Living Armor 

mobs:register_mob("corruptionmt:corruptor", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 7,
	hp_min = 25,
	hp_max = 30,
	armor = 90,
	collisionbox = {-0.3, -0.01, -0.3, 0.3, 1.94, 0.3},
	visual = "mesh",
	mesh = "corruptor.obj",
	textures = {{"corruptor_texture.png"}},
	blood_texture = "corruptionmt_blood.png",
	visual_size = {x=9, y=9},
	makes_footstep_sound = true,
--	sounds = {random = "mobs_oerkki"},
	fly = true,
	fly_in = ("air"),
	walk_velocity = 4,
	run_velocity = 5,
	view_range = 28,
	jump = false,
	drops = {
		{name = "corruptionmt:rotten_eye", chance = 1, min = 0, max = 1}
	},
	lava_damage = 2,
})

-- where to spawn

mobs:spawn({
	name = "corruptionmt:corruptor",
	nodes = {"corruptionmt:dirt_with_ebongrass", "corruptionmt:ebonstone"},
	active_object_count = 4,
        chance = 3000
})

-- spawn egg

mobs:register_egg("corruptionmt:corruptor", ("Corruptor"), "corruptionmt_ebonstone.png", 1)

mobs:register_mob("corruptionmt:darkslime", {
	type = "monster",
	hp_min = 20, 
        hp_max = 30,
	collisionbox = {-0.3, -0.01, -0.3, 0.3, 1.94, 0.3},
	stepheight = 0.5,
	visual = "mesh",
	mesh = "slime.obj",
	textures = {{"darkslime_texture.png"}},
	blood_texture = "corruptionmt_blood.png",
	visual_size = {x = 9, y = 9},
	makes_footstep_sound = false,
	attack_type = "dogfight",
	attack_animals = true,
	damage = 4, 
        reach = 2,
	passive = false,
	walk_velocity = 1,
	run_velocity = 4,
	walk_chance = 0,
	jump_chance = 30,
	jump_height = 7,
	armor = 100,
	view_range = 16,
	drops = {
		{name = "terralibmt:gel_clump", chance = 1, min = 1, max = 3},
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0
})

mobs:spawn({
	name = "corruptionmt:darkslime",
	nodes = {"corruptionmt:dirt_with_ebongrass", "corruptionmt:ebonstone"},
	active_object_count = 4,
        chance = 3000
})

-- spawn egg

mobs:register_egg("corruptionmt:darkslime", ("Darkslime"), "darkslime_texture.png", 1)