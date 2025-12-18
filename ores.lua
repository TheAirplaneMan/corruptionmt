minetest.register_node("corruptionmt:ebonstone_with_mese", {
	description = ("Ebonstone Mese Ore"),
	tiles = {"corruptionmt_ebonstone.png^default_mineral_mese.png"},
	groups = {cracky = 1},
	drop = "default:mese_crystal",
	sounds = default.node_sound_stone_defaults(),
})	

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "corruptionmt:ebonstone_with_mese",
	wherein        = "corruptionmt:ebonstone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 3,
	clust_size     = 2,
	y_max          = -100,
	y_min          = -210,
})