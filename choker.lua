mobs:register_mob("corruptionmt:choker", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
--	pathfinding = true,
	knock_back = false,
	reach = 4,
	damage = 12,
	hp_min = 32,
	hp_max = 50,
	armor = 90,
	collisionbox = {-0.5000, -0.5000, -0.5000, 0.5000, 2.500, 0.5000},
	visual_size = {x = 10, y = 10},
	visual = "mesh",
	mesh = "terralibmt_hand.obj",
	textures = {{"corruptionmt_choker.png"}},
	makes_footstep_sound = true,
--	sounds = {random = "terralibmt_gross_random"},
	walk_velocity = 0,
	run_velocity = 0,
	jump_height = 0,
	stepheight = 0,
	floats = 0,
	view_range = 12,
	drops = {
		{name = "corruptionmt:rotten_eye", chance = 1, min = 0, max = 1}
	},
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	animation = {
		speed_normal = 15, speed_run = 15,
		stand_start = 0, stand_end = 14,
		walk_start = 15, walk_end = 38,
		run_start = 40, run_end = 63,
		punch_start = 40, punch_end = 63
	},
})

mobs:spawn({
	name = "corruptionmt:choker",
	nodes = {"corruptionmt:dirt_with_ebongrass", "corruptionmt:ebonstone"},
	active_object_count = 1,
        chance = 3000
})

-- spawn egg

mobs:register_egg("corruptionmt:choker", ("Choker"), "corruptionmt_choker_egg_texture.png", 1)