minetest.register_node("corruptionmt:fungus_night", {
	description = ("Night Fungus"),
	tiles = {"corruptionmt_fungus_night.png"},
	inventory_image = "corruptionmt_fungus_night.png",
	wield_image = "corruptionmt_fungus_night.png",
	drawtype = "plantlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	groups = {mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(-1),
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
	}
})

	minetest.register_decoration({
		name = "corruptionmt:fungus_night",
		deco_type = "simple",
		place_on = {"corruptionmt:dirt_with_ebongrass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"corruption"},
		y_max = 31000,
		y_min = 2,
		decoration = "corruptionmt:fungus_night",
		param2 = 4,
	})

minetest.register_node("corruptionmt:rotlilies", {
	description = "Rotlilies",
	drawtype = "plantlike",
	tiles = {"corruptionmt_rotlilies.png"},
	inventory_image = "corruptionmt_rotlilies.png",
	wield_image = "corruptionmt_rotlilies.png",

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
})

	minetest.register_decoration({
		name = "corruptionmt:rotlilies",
		deco_type = "simple",
		place_on = {"corruptionmt:dirt_with_ebongrass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 330,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"corruption"},
		y_max = 31000,
		y_min = 2,
		decoration = "corruptionmt:rotlilies",
		param2 = 4,
	})