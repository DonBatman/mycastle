core.register_node("mycastle:fireplace1", {
    description = "Fireplace 1",
    drawtype = "mesh",
    mesh = "mycastle_fireplace1.obj",
    tiles = {"mycastle_fireplace1.png"},
    paramtype2 = "facedir",
    groups = {cracky = 2},
	selection_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, 0, 0.5, 1, 0.5},
			{1.5, -0.5, 0, 2, 1, 0.5},
			{0, 0.4375, 0, 2, 1, 0.5},
			{0.0625, -0.5, -0.5, 2, -0.375, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, 0, 0.5, 1, 0.5},
			{1.5, -0.5, 0, 2, 1, 0.5},
			{0, 0.625, 0, 2, 1, 0.5},
			{0, -0.5, -0.5, 2.0625, -0.375, 0.5},
		}
	},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		local name = placer:get_player_name()
    	local p2 = core.get_node(pos).param2
    	local np = {x=pos.x,y=pos.y,z=pos.z}
    	local np2 = {x=pos.x,y=pos.y,z=pos.z}
    	if     p2 == 0 then	np = {x=pos.x+1,y=pos.y,z=pos.z} np2 = {x=pos.x+2,y=pos.y,z=pos.z}
    	elseif p2 == 1 then np = {x=pos.x,y=pos.y,z=pos.z-1} np2 = {x=pos.x,y=pos.y,z=pos.z-2}
    	elseif p2 == 2 then np = {x=pos.x-1,y=pos.y,z=pos.z} np2 = {x=pos.x-2,y=pos.y,z=pos.z}
    	elseif p2 == 3 then np = {x=pos.x,y=pos.y,z=pos.z+1} np2 = {x=pos.x,y=pos.y,z=pos.z+2}
    	end
    	if core.get_node(np).name ~= "air" or core.get_node(np2).name ~= "air" then
    		core.remove_node(pos)
	   		core.chat_send_player(name, ("Not enough room here to place the fireplace."))
	   	else
	   		core.set_node(np, {name = "fire:permanent_flame"})
    	end
    end,
    	
	on_punch = function(pos, node, puncher, pointed_thing)
    	local p2 = core.get_node(pos).param2
    	local np = {x=pos.x,y=pos.y,z=pos.z}
    	if p2 == 0 then np = {x=pos.x+1,y=pos.y,z=pos.z}
    	elseif p2 == 1 then np = {x=pos.x,y=pos.y,z=pos.z-1}
    	elseif p2 == 2 then np = {x=pos.x-1,y=pos.y,z=pos.z}
    	elseif p2 == 3 then np = {x=pos.x,y=pos.y,z=pos.z+1} end
		if core.get_node(np).name == "fire:permanent_flame" then
    		core.remove_node(np)
    	end
    end,
    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
    	local p2 = core.get_node(pos).param2
    	local np = {x=pos.x,y=pos.y,z=pos.z}
    	if p2 == 0 then np = {x=pos.x+1,y=pos.y,z=pos.z}
    	elseif p2 == 1 then np = {x=pos.x,y=pos.y,z=pos.z-1}
    	elseif p2 == 2 then np = {x=pos.x-1,y=pos.y,z=pos.z}
    	elseif p2 == 3 then np = {x=pos.x,y=pos.y,z=pos.z+1} end
    	if core.get_node(np).name == "air" or "ignore" then
    		core.set_node(np, {name = "fire:permanent_flame"})
    	end
    end,
})

core.register_node("mycastle:fireplace2", {
    description = "Fireplace 2",
    drawtype = "mesh",
    mesh = "mycastle_fireplace2.obj",
    tiles = {"mycastle_fireplace2.png"},
    paramtype2 = "facedir",
    groups = {cracky = 2},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			{1.5, -0.5, -0.5, 2.5, 0.5, 0.5},
			{-0.5, 0.5, -0.5, 2.5, 1.5, 0.5},
			{-0.5, -0.5, -0.8125, 2.5, -0.375, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			{1.5, -0.5, -0.5, 2.5, 0.5, 0.5},
			{-0.5, 0.5, -0.5, 2.5, 1.5, 0.5},
			{-0.5, -0.5, -0.8125, 2.5, -0.375, 0.5},
		}
	},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		local name = placer:get_player_name()
    	local p2 = core.get_node(pos).param2
    	local np = {x=pos.x,y=pos.y,z=pos.z}
    	local np2 = {x=pos.x,y=pos.y,z=pos.z}
    	if p2 == 0 then np = {x=pos.x+1,y=pos.y,z=pos.z} np2 = {x=pos.x+2,y=pos.y,z=pos.z}
    	elseif p2 == 1 then np = {x=pos.x,y=pos.y,z=pos.z-1} np2 = {x=pos.x,y=pos.y,z=pos.z-2}
    	elseif p2 == 2 then np = {x=pos.x-1,y=pos.y,z=pos.z} np2 = {x=pos.x-2,y=pos.y,z=pos.z}
    	elseif p2 == 3 then np = {x=pos.x,y=pos.y,z=pos.z+1} np2 = {x=pos.x,y=pos.y,z=pos.z+2}
    	end
    	if core.get_node(np).name ~= "air" or core.get_node(np2).name ~= "air" then
    		core.remove_node(pos)
	   		core.chat_send_player(name, ("Not enough room here to place the fireplace."))
    	end
    end,
    	
	on_punch = function(pos, node, puncher, pointed_thing)
    	local p2 = core.get_node(pos).param2
    	local np = {x=pos.x,y=pos.y,z=pos.z}
    	if p2 == 0 then np = {x=pos.x+1,y=pos.y,z=pos.z}
    	elseif p2 == 1 then np = {x=pos.x,y=pos.y,z=pos.z-1}
    	elseif p2 == 2 then np = {x=pos.x-1,y=pos.y,z=pos.z}
    	elseif p2 == 3 then np = {x=pos.x,y=pos.y,z=pos.z+1} end
		if core.get_node(np).name == "fire:permanent_flame" then
    		core.remove_node(np)
    	end
    end,
    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
    	local p2 = core.get_node(pos).param2
    	local np = {x=pos.x,y=pos.y,z=pos.z}
    	if p2 == 0 then np = {x=pos.x+1,y=pos.y,z=pos.z}
    	elseif p2 == 1 then np = {x=pos.x,y=pos.y,z=pos.z-1}
    	elseif p2 == 2 then np = {x=pos.x-1,y=pos.y,z=pos.z}
    	elseif p2 == 3 then np = {x=pos.x,y=pos.y,z=pos.z+1} end
    	if core.get_node(np).name == "air" or "ignore" then
    		core.set_node(np, {name = "fire:permanent_flame"})
    	end
    end,
})
