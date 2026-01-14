	-- Corruption

	minetest.register_biome({
		name = "corruption",
		node_top = "corruptionmt:dirt_with_ebongrass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_stone = "corruptionmt:ebonstone",
		node_dungeon = "corruptionmt:ebonstone_cobble",
--		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = 4,
		heat_point = 52,
		humidity_point = 51,
	})

	minetest.register_biome({
		name = "corruption_ocean",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_cave_liquid = "default:water_source",
		node_stone = "corruptionmt:ebonstone",
		node_dungeon = "corruptionmt:ebonstone_cobble",
--		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 3,
		y_min = -255,
		heat_point = 52,
		humidity_point = 51,
	})

	minetest.register_biome({
		name = "corruption_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		y_max = -256,
		y_min = -31000,
		heat_point = 52,
		humidity_point = 51,
	})


-- Decorations
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"corruptionmt:dirt_with_ebongrass"},
		sidelen = 4,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 100, y = 100, z = 100},
			seed = 330,
			octaves = 3,
			persist = 0.06
		},
		biomes = {"corruption"},
		y_max = 31000,
		y_min = 1,
		decoration = "corruptionmt:deaththorns",
	})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "corruptionmt:dirt_with_ebongrass",
	sidelen = 16,
	fill_ratio = 0.00028,
	biomes = {"corruption"},
	height = 0,
	y_min = 0,
	y_max = 1000,
	place_offset_y = math.random(-70,-1),
	schematic = minetest.get_modpath("terralibmt") .. "/schematics/chasm.mts",
	flags = "place_center_x, place_center_z, force_placement",
	rotation = "random",		
})