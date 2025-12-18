minetest.register_node("corruptionmt:dirt_with_ebongrass", {
	description = ("Dirt with Ebongrass"),
	tiles = {"corruptionmt_ebongrass_top.png", "default_dirt.png",
		{name = "default_dirt.png^corruptionmt_ebongrass.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("corruptionmt:ebonstone", {
	description = ("Ebonstone"),
	tiles = {"corruptionmt_ebonstone.png"},
	groups = {cracky = 1, stone = 1},
	drop = "corruptionmt:ebonstone_cobble",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("corruptionmt:ebonstone_with_mese", {
	description = ("Ebonstone Mese Ore"),
	tiles = {"corruptionmt_ebonstone.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("corruptionmt:ebonstone_cobble", {
	description = ("Ebonstone"),
	tiles = {"corruptionmt_ebonstone_cobble.png"},
	groups = {cracky = 1, stone = 1},
	drop = "corruptionmt:ebonstone",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("corruptionmt:deaththorns", {
	description = "Deaththorns",
	drawtype = "plantlike",
	tiles = {"corruptionmt_deaththorns.png"},
	inventory_image = "corruptionmt_deaththorns.png",
	wield_image = "corruptionmt_deaththorns.png",

	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,

	groups = {snappy = 3, flammable = 2, plant = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),

	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
	},

	-- Damage when touched / stepped on
	damage_per_second = 2,
})