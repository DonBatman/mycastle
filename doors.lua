minetest.register_node("mycastle:jail_door_bottom", {
	description = "Jail Door",
	tiles = {
			"mycastle_bars2.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.4375, 0.5, 0.0625},
			{-0.25, -0.5, 0, -0.1875, 0.5, 0.0625},
			{0, -0.5, 0, 0.0625, 0.5, 0.0625},
			{0.25, -0.5, 0, 0.3125, 0.5, 0.0625},
			{0.4375, -0.5, 0, 0.5, 0.5, 0.0625},
			{-0.5, -0.5, 0, 0.5, -0.375, 0.0625},
			{0.3125, 0.375, 0, 0.5, 0.5, 0.0625},
			}
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0.5, 1.5, 0.0625},
			},
		},
		

		
	after_place_node = function(pos, placer)

--		local pos1 = pointed_thing.above
--		local pos = pos1
--		local pos2 = minetest.find_node_near(pos1, 1, {doora})
		local par = minetest.dir_to_facedir(placer:get_look_dir())
		local par2 = par + 2
		local above = vector.add(pos, {x=0,y=1,z=0})
		if minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z}) ~= "air" then
--			minetest.remove_node({x = pos.x, y = pos.y, z = pos.z})
--			minetest.chat_send_player(placer:get_player_name(), "Not enough room")
--			return
--		else
		local par1 = par + 1
		local par2 = par + 2
		local par3 = par + 3
		if par1 == 4 then par2 = 0 end
		if par1 == 5 then par2 = 1 end
		if par2 == 4 then par2 = 0 end
		if par2 == 5 then par2 = 1 end
		if par3 == 4 then par2 = 0 end
		if par3 == 5 then par2 = 1 end
			if par == 0 then
		minetest.set_node(vector.add(pos, {x=0,y=0,z=0}), {name="mycastle:jail_door_bottom"})
		minetest.set_node(vector.add(pos, {x=0,y=1,z=0}), {name="mycastle:jail_door_top"})
			end
			if par == 1 then
		minetest.set_node(vector.add(pos, {x=0,y=0,z=0}), {name="mycastle:jail_door_bottom"},par3)
		minetest.set_node(vector.add(pos, {x=0,y=1,z=0}), {name="mycastle:jail_door_top"},par3)
			end
			if par == 2 then
		minetest.set_node(vector.add(pos, {x=0,y=0,z=0}), {name="mycastle:jail_door_bottom"})
		minetest.set_node(vector.add(pos, {x=0,y=1,z=0}), {name="mycastle:jail_door_top"})
			end
			if par == 3 then
		minetest.set_node(vector.add(pos, {x=0,y=0,z=0}), {name="mycastle:jail_door_bottom"})
		minetest.set_node(vector.add(pos, {x=0,y=1,z=0}), {name="mycastle:jail_door_top"})
			end
			minetest.chat_send_player(placer:get_player_name(), par.." is param2")
			minetest.chat_send_player(placer:get_player_name(), par2.." is par2")
			
		end
	end,
	after_destruct = function(pos, oldnode)
		minetest.remove_node({x = pos.x, y = pos.y + 1, z = pos.z})
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name="mycastle:jail_door_open_bottom"})
		minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, {name="mycastle:jail_door_open_top"})
	end,
		
})
minetest.register_node("mycastle:jail_door_top", {
	description = "Jail Door",
	tiles = {
			"mycastle_bars2.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.4375, 0.5, 0.0625},
			{-0.25, -0.5, 0, -0.1875, 0.5, 0.0625},
			{0, -0.5, 0, 0.0625, 0.5, 0.0625},
			{0.25, -0.5, 0, 0.3125, 0.5, 0.0625},
			{0.4375, -0.5, 0, 0.5, 0.5, 0.0625},
			{-0.5, 0.375, 0, 0.5, 0.5, 0.0625},
			{0.3125, -0.5, 0, 0.5, -0.375, 0.0625},
			}
		},
		--[[
	selection_box = {
		type = "fixed",
		fixed ={ 
			{0, 0, 0, 0, 0, 0},
			},
		},
	
--]]
})

minetest.register_node("mycastle:jail_door_open_bottom", {
	description = "Jail Door",
	tiles = {
			"mycastle_bars2.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5},
			}
		},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5},
			}
		},
--	after_place_node = function(pos, placer)
--		minetest.set_node(vector.add(pos, {x=0,y=1,z=0}), {name="mycastle:jail_door_open_top"})
--	end,
	after_destruct = function(pos, oldnode)
		minetest.remove_node({x = pos.x, y = pos.y + 1, z = pos.z})
	end,
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		minetest.set_node(vector.add(pos, {x=0,y=0,z=0}), {name="mycastle:jail_door_bottom"})
		minetest.set_node(vector.add(pos, {x=0,y=1,z=0}), {name="mycastle:jail_door_top"})
	end,

})
minetest.register_node("mycastle:jail_door_open_top", {
	description = "Jail Door",
	tiles = {
			"mycastle_bars2.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5},
			}
		},
--[[
	selection_box = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
			},
		},
--]]
})







