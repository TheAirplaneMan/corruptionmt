minetest.register_tool("corruptionmt:shadow_steel_tool_pickaxe", {
	description = ("Shadow-Forged Steel Pickaxe"),
	inventory_image = "corruptionmt_shadow_steel_tool_pickaxe.png",
	wield_scale= {x = 2, y = 2, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.8, [2]=0.85, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("corruptionmt:shadow_steel_tool_shovel", {
	description = ("Shadow-Forged Steel Shovel"),
	inventory_image = "corruptionmt_shadow_steel_tool_shovel.png",
	wield_scale= {x = 2, y = 2, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("corruptionmt:shadow_steel_tool_axe", {
	description = ("Shadow-Forged Steel Axe"),
	inventory_image = "corruptionmt_shadow_steel_tool_axe.png",
	wield_scale= {x = 2, y = 2, z = 1.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.90, [2]=0.80, [3]=0.40}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("corruptionmt:shadow_steel_tool_sword", {
	description = ("Shadow-Forged Steel Sword"),
	inventory_image = "corruptionmt_shadow_steel_tool_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.90, [2]=0.50, [3]=0.10}, uses=40, maxlevel=3},
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
			{"corruptionmt:shadow_steel_ingot", "group:stick"},
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