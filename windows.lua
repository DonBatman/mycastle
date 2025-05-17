
core.register_node("mycastle:window1", {
	description = "Window 1",
	tiles = {"mycastle_window1.png"},
	drawtype = "glasslike",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:window1 5",
	recipe = {
			{"mycastle:dark_block","","mycastle:dark_block"},
			{"","default:glass",""},
			{"mycastle:dark_block","","mycastle:dark_block"},
			}
})
core.register_node("mycastle:window2", {
	description = "Window 2",
	tiles = {"mycastle_window2.png"},
	drawtype = "glasslike",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:window2 5",
	recipe = {
			{"","mycastle:dark_squares_small",""},
			{"mycastle:dark_squares_small","default:glass","mycastle:dark_squares_small"},
			{"","mycastle:dark_squares_small",""},
			}
})
core.register_node("mycastle:window3", {
	description = "Window 3",
	tiles = {"mycastle_window3.png"},
	drawtype = "glasslike",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:window3 9",
	recipe = {
			{"mycastle:dark_block","mycastle:dark_block","mycastle:dark_block"},
			{"mycastle:dark_block","default:glass","mycastle:dark_block"},
			{"mycastle:dark_block","mycastle:dark_block","mycastle:dark_block"},
			}
})
core.register_node("mycastle:window4", {
	description = "Window 4",
	tiles = {"mycastle_window4.png"},
	drawtype = "glasslike",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:window4 5",
	recipe = {
			{"","mycastle:dark_block",""},
			{"mycastle:dark_block","default:glass","mycastle:dark_block"},
			{"","mycastle:dark_block",""},
			}
})
core.register_node("mycastle:window5", {
	description = "Window 5",
	tiles = {"mycastle_window5.png","mycastle_glass.png"},
	drawtype = "glasslike_framed",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:window5 7",
	recipe = {
			{"mycastle:dark_block","","mycastle:dark_block"},
			{"mycastle:dark_block","default:glass","mycastle:dark_block"},
			{"mycastle:dark_block","","mycastle:dark_block"},
			}
})
core.register_node("mycastle:window6", {
	description = "Window 6",
	tiles = {"mycastle_shield2.png",},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.375, 0.0625},
			{-0.5, 0.375, -0.0625, 0.5, 0.5, 0.0625},
			{-0.5, -0.5, -0.0625, -0.375, 0.5, 0.0625},
			{0.375, -0.5, -0.0625, 0.5, 0.5, 0.0625},
			{0.125, -0.5, -0.0625, 0.1875, 0.5, 0.0625},
			{-0.1875, -0.5, -0.0625, -0.125, 0.5, 0.0625},
		}
	}
})
core.register_craft({
	output = "mycastle:window6 7",
	recipe = {
			{"mycastle:concrete_block","","mycastle:concrete_block"},
			{"mycastle:concrete_block","default:glass","mycastle:concrete_block"},
			{"mycastle:concrete_block","","mycastle:concrete_block"},
			}
})
core.register_node("mycastle:window7", {
	description = "Window 7",
	tiles = {"mycastle_shield2.png",},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.375, 0.0625},
			{-0.5, 0.375, -0.0625, 0.5, 0.5, 0.0625},
			{-0.5, -0.5, -0.0625, -0.375, 0.5, 0.0625},
			{0.375, -0.5, -0.0625, 0.5, 0.5, 0.0625},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})
core.register_craft({
	output = "mycastle:window7 5",
	recipe = {
			{"mycastle:concrete_block","","mycastle:concrete_block"},
			{"","default:glass",""},
			{"mycastle:concrete_block","","mycastle:concrete_block"},
			}
})
core.register_node("mycastle:window8", {
	description = "Window 8",
	tiles = {"mycastle_shield2.png",},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.375, 0.0625},
			{-0.5, 0.375, -0.0625, 0.5, 0.5, 0.0625},
			{-0.5, -0.5, -0.0625, -0.375, 0.5, 0.0625},
			{0.375, -0.5, -0.0625, 0.5, 0.5, 0.0625},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
			{-0.5, -0.0625, -0.0625, 0.5, 0.0625, 0.0625},
		}
	}
})
core.register_craft({
	output = "mycastle:window8 5",
	recipe = {
			{"","mycastle:concrete_block",""},
			{"mycastle:concrete_block","default:glass","mycastle:concrete_block"},
			{"","mycastle:concrete_block",""},
			}
})
core.register_node("mycastle:window9", {
	description = "Window 9",
	tiles = {"mycastle_window6.png"},
	drawtype = "glasslike",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:window9 9",
	recipe = {
			{"mycastle:dark_block","default:glass","mycastle:dark_block"},
			{"default:glass","default:glass","default:glass"},
			{"mycastle:dark_block","default:glass","mycastle:dark_block"},
			}
})
core.register_node("mycastle:window10", {
	description = "Window 10",
	tiles = {"mycastle_window7.png"},
	drawtype = "glasslike",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:window10 5",
	recipe = {
			{"mycastle:dark_brick","","mycastle:dark_brick"},
			{"","default:glass",""},
			{"mycastle:dark_brick","","mycastle:dark_brick"},
			}
})
core.register_node("mycastle:window11", {
	description = "Window 11",
	tiles = {"mycastle_window8.png"},
	drawtype = "glasslike",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	output = "mycastle:window11 9",
	recipe = {
			{"mycastle:dark_brick","mycastle:dark_brick","mycastle:dark_brick"},
			{"mycastle:dark_brick","default:glass","mycastle:dark_brick"},
			{"mycastle:dark_brick","mycastle:dark_brick","mycastle:dark_brick"},
			}
})
