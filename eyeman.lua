mobs:register_mob("corruptionmt:eyeman", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 9,
	hp_min = 12,
	hp_max = 25,
	armor = 80,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "mobs_stone_monster.b3d",
	textures = {{"eyeman_texture.png"}},
	makes_footstep_sound = true,
	sounds = {random = "terralibmt_gross2_random"},
	walk_velocity = 1,
	run_velocity = 4,
	jump_height = 0,
	stepheight = 1.1,
	floats = 0,
	view_range = 10,
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
	name = "corruptionmt:eyeman",
	nodes = {"corruptionmt:dirt_with_ebongrass", "corruptionmt:ebonstone"},
	active_object_count = 4,
	max_height = 0,
        chance = 3000
})

-- spawn egg

mobs:register_egg("corruptionmt:eyeman", ("Eyeman"), "eyeman_egg_texture.png", 1)