minetest.register_craftitem("corruptionmt:grapes_of_wrath", {
	description = "The Grapes of Wrath",
	inventory_image = "corruptionmt_the_grapes_of_wrath.png",
	on_use = function(itemstack,user)
		user:set_physics_override({
			speed = 2.5,
			jump = 1.5,
		})
		minetest.after(10, function()
			user:set_physics_override({
				speed = 1,
			        jump = 1,
			})
		end, user)
		local hp = user:get_hp()
		user:set_hp(hp+2)
		local count = itemstack:get_count()
		return "corruptionmt:grapes_of_wrath "..count-1
	end,
})