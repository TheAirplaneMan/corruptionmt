minetest.register_tool("corruptionmt:shadow_steel_tool_pickaxe", {
	description = ("Shadow-Forged Steel Pickaxe"),
	inventory_image = "corruptionmt_shadow_steel_tool_pickaxe.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.8, [2]=0.85, [3]=0.50}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("corruptionmt:shadow_steel_tool_shovel", {
	description = ("Shadow-Forged Steel Shovel"),
	inventory_image = "corruptionmt_shadow_steel_tool_shovel.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("corruptionmt:shadow_steel_tool_axe", {
	description = ("Shadow-Forged Steel Axe"),
	inventory_image = "corruptionmt_shadow_steel_tool_axe.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.90, [2]=0.80, [3]=0.40}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("corruptionmt:shadow_steel_tool_sword", {
	description = ("Shadow-Forged Steel Sword"),
	inventory_image = "corruptionmt_shadow_steel_tool_sword.png",
	wield_scale= {x = 1.7, y = 1.7, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.90, [2]=0.50, [3]=0.10}, uses=45, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

	minetest.register_craft({
		output = "corruptionmt:shadow_steel_tool_pickaxe",
		recipe = {
			{"corruptionmt:shadow_steel_ingot", "corruptionmt:shadow_steel_ingot", "corruptionmt:shadow_steel_ingot"},
			{"", "default:obsidian_shard", ""},
			{"", "default:obsidian_shard", ""}
		}
	})

	minetest.register_craft({
		output = "corruptionmt:shadow_steel_tool_shovel",
		recipe = {
			{"corruptionmt:shadow_steel_ingot"},
			{"default:obsidian_shard"},
			{"default:obsidian_shard"}
		}
	})

	minetest.register_craft({
		output = "corruptionmt:shadow_steel_tool_axe",
		recipe = {
			{"corruptionmt:shadow_steel_ingot", "corruptionmt:shadow_steel_ingot"},
			{"corruptionmt:shadow_steel_ingot", "default:obsidian_shard"},
			{"", "default:obsidian_shard"}
		}
	})

	minetest.register_craft({
		output = "corruptionmt:shadow_steel_tool_sword",
		recipe = {
			{"corruptionmt:shadow_steel_ingot"},
			{"corruptionmt:shadow_steel_ingot"},
			{"default:obsidian_shard"}
		}
	})

minetest.register_craftitem("corruptionmt:shadow_dust", {
	description = ("Shadow Dust"),
	inventory_image = "corruptionmt_shadow_dust.png",
})

minetest.register_craftitem("corruptionmt:nervous_tissue", {
	description = ("Nervous Tissue"),
	inventory_image = "corruptionmt_nervous_tissue.png",
})

minetest.register_craftitem("corruptionmt:shadow_steel_ingot", {
	description = ("Shadow Steel Ingot"),
	inventory_image = "corruptionmt_shadow_steel_ingot.png",
})

minetest.register_node("corruptionmt:shadow_steel_block", {
	description = ("Shadow Steel Block"),
	tiles = {"corruptionmt_shadow_steel_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_metal_defaults(),
})


minetest.register_craft({
	type = "shapeless",
	output = "corruptionmt:shadow_dust 4",
	recipe = {
		"corruptionmt:fungus_night",
		"corruptionmt:fungus_night",
		"corruptionmt:fungus_night",
		"corruptionmt:nervous_tissue",
		"corruptionmt:nervous_tissue",
		"corruptionmt:nervous_tissue",
		"corruptionmt:rotten_eye",
		"corruptionmt:rotten_eye",
		"corruptionmt:rotten_eye",
	}
})

	minetest.register_craft({
		output = "corruptionmt:shadow_steel_block",
		recipe = {
			{"corruptionmt:shadow_steel_ingot", "corruptionmt:shadow_steel_ingot", "corruptionmt:shadow_steel_ingot"},
			{"corruptionmt:shadow_steel_ingot", "corruptionmt:shadow_steel_ingot", "corruptionmt:shadow_steel_ingot"},
			{"corruptionmt:shadow_steel_ingot", "corruptionmt:shadow_steel_ingot", "corruptionmt:shadow_steel_ingot"}		}
	})

	minetest.register_craft({
		output = "corruptionmt:shadow_steel_ingot 9",
		recipe = {
			{"corruptionmt:shadow_steel_block"}		}
	})

minetest.register_craft({
	type = "shapeless",
	output = "corruptionmt:shadow_steel_ingot",
	recipe = {
		"corruptionmt:shadow_dust",
		"corruptionmt:shadow_dust",
		"corruptionmt:shadow_dust",
		"corruptionmt:shadow_dust",
		"corruptionmt:shadow_dust",
		"corruptionmt:shadow_dust",
		"corruptionmt:shadow_dust",
		"corruptionmt:shadow_dust",
		"default:steel_ingot",
	}
})