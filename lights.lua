minetest.register_node("mycastle:light1", {
	description = "Light 1",
	tiles = {"mycastle_light1.png"},
	drawtype = "normal",
	paramtype = "light",
	light_source =  14,
	use_texture_alpha = "clip",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:light1 2",
	recipe = {
			{"","mycastle:window4",""},
			{"","default:torch",""},
			{"","default:paper",""},
			}
})
minetest.register_node("mycastle:light2", {
	description = "Light 2",
	tiles = {"mycastle_light2.png"},
	drawtype = "normal",
	paramtype = "light",
	light_source =  14,
	use_texture_alpha = "clip",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:light2 2",
	recipe = {
			{"","mycastle:window4",""},
			{"","default:torch","default:paper"},
			{"","",""},
			}
})
minetest.register_node("mycastle:light3", {
	description = "Light 3",
	tiles = {"mycastle_light3.png"},
	drawtype = "normal",
	paramtype = "light",
	light_source =  14,
	use_texture_alpha = "clip",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:light3 2",
	recipe = {
			{"","mycastle:window4",""},
			{"default:paper","default:torch",""},
			{"","",""},
			}
})
minetest.register_node("mycastle:torch_sconce", {
	description = "Torch Sconce",
	tiles = {
		{name="mycastle_torch_top.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
		"mycastle_torch_bottom.png",
		{name="mycastle_torch_side.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
		{name="mycastle_torch_side.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
		{name="mycastle_torch_side.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
		{name="mycastle_torch_side.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source =  14,
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.375, 0.375, 0.1875, 0, 0.5},
			{-0.1875, 0.125, -0.125, 0.1875, 0.3125, 0.125},
			{-0.125, 0.125, -0.1875, 0.125, 0.3125, 0.1875},
			{-0.125, 0.25, -0.0625, 0.125, 0.4375, 0.0625},
			{-0.0625, 0.25, -0.125, 0.0625, 0.4375, 0.125},
			{-0.0625, 0.4375, -0.0625, 0.0625, 0.5, 0.0625},
			{-0.25, 0, -0.1875, 0.25, 0.125, 0.1875},
			{-0.1875, 0, -0.25, 0.1875, 0.125, 0.25},
			{-0.0625, -0.25, -0.125, 0.0625, 0.125, 0.125},
			{-0.125, -0.25, -0.0625, 0.125, 0.125, 0.1875},
			{-0.125, -0.25, -0.0625, 0.125, -0.125, 0.375},
			{-0.0625, -0.3125, -0.0625, 0.0625, -0.0625, 0.375},
		}
	}
})
core.register_craft({
	output = "mycastle:torch_sconce 1",
	recipe = {
			{"","mycastle:concrete_block",""},
			{"","default:torch",""},
			{"","",""},
			}
})
minetest.register_node("mycastle:chandelier", {
	description = "Chandelier",
	tiles = {
		{name="mycastle_chandelier_top.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
		"mycastle_chandelier_bottom.png",
		{name="mycastle_chandelier_side.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
		{name="mycastle_chandelier_side.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
		{name="mycastle_chandelier_side.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
		{name="mycastle_chandelier_side.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.5}},
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source =  14,
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.5, 0.0625, -0.4375, 0.5},
			{-0.25, -0.5, -0.5, -0.125, 0, -0.375},
			{0.125, -0.5, 0.375, 0.25, 0, 0.5},
			{-0.5, -0.5, -0.25, -0.375, 0, -0.125},
			{0.375, -0.5, -0.25, 0.5, 0, -0.125},
			{-0.5, -0.5, -0.0625, 0.5, -0.4375, 0.0625},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
			{-0.1875, 0.375, -0.1875, 0.1875, 0.5, 0.1875},
			{-0.25, -0.5, -0.5, 0.25, -0.4375, -0.375},
			{0.125, -0.5, -0.5, 0.25, 0, -0.375},
			{-0.25, -0.5, 0.375, -0.125, 0, 0.5},
			{-0.25, -0.5, 0.375, 0.25, -0.4375, 0.5},
			{-0.5, -0.5, 0.125, -0.375, 0, 0.25},
			{-0.5, -0.5, -0.25, -0.375, -0.4375, 0.25},
			{0.375, -0.5, 0.125, 0.5, 0, 0.25},
			{0.375, -0.5, -0.25, 0.5, -0.4375, 0.25},
		}
	}
})
core.register_craft({
	output = "mycastle:chandelier 1",
	recipe = {
			{"default:torch","","default:torch"},
			{"","mycastle:castle_wood",""},
			{"default:torch","","default:torch"},
			}
})
minetest.register_node("mycastle:fire_bowl", {
	description = "Fire Bowl",
	tiles = {"mycastle_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source =  14,
	groups = {cracky = 2, oddly_breakable_by_hand = 2,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
			{-0.375, 0.25, -0.375, 0.375, 0.375, 0.375},
			{-0.25, 0.125, -0.25, 0.25, 0.25, 0.25},
			{-0.125, -0.125, -0.125, 0.125, 0.125, 0.125},
			{-0.375, -0.5, -0.375, 0.375, -0.375, 0.375},
			{-0.25, -0.375, -0.25, 0.25, -0.25, 0.25},
			{-0.1875, -0.25, -0.1875, 0.1875, -0.125, 0.1875},
		}
	},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		local p = vector.add(pos,{x=0,y=1,z=0})
		local node_above = core.get_node(p)
		if node_above.name == "air" then
			core.set_node(p,{name="fire:permanent_flame"})
		else
			return
		end
	end,
	on_destruct = function(pos)
		local p = vector.add(pos,{x=0,y=1,z=0})
		local node_above = core.get_node(p)
		if node_above.name == "fire:permanent_flame" then
			core.remove_node(p)
		end
	end,
})
core.register_craft({
	output = "mycastle:fire_bowl 1",
	recipe = {
			{"","default:torch",""},
			{"","mycastle:castle_wood",""},
			{"","mycastle:castle_wood",""},
			}
})
