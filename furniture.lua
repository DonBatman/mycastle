minetest.register_node("mycastle:table", {
	description = "Table",
	tiles = {
			"mycastle_wood.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_big_table.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},

})
core.register_craft({
	output = "mycastle:table",
	recipe = {
			{"mycastle:castle_wood","mycastle:castle_wood","mycastle:castle_wood"},
			{"","mycastle:castle_wood",""},
			{"","mycastle:castle_wood",""},
			}
})
minetest.register_node("mycastle:chair", {
	description = "Chair",
	tiles = {
			"mycastle_wood.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_chair.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		},
	}
})
core.register_craft({
	output = "mycastle:chair 2",
	recipe = {
			{"mycastle:castle_wood","",""},
			{"mycastle:castle_wood","mycastle:castle_wood",""},
			{"mycastle:castle_wood","mycastle:castle_wood",""},
			}
})
minetest.register_node("mycastle:stand", {
	description = "Stand",
	tiles = {
			"mycastle_wood.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_small_table.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.125, 0.5, 0.5, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.125, 0.5, 0.5, 0.5},
		}
	},
})
core.register_craft({
	output = "mycastle:stand 2",
	recipe = {
			{"","",""},
			{"mycastle:castle_wood","mycastle:castle_wood","mycastle:castle_wood"},
			{"mycastle:castle_wood","","mycastle:castle_wood"},
			}
})
minetest.register_node("mycastle:wall_covering", {
	description = "Wall Covering",
	tiles = {
			"wool_red.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		},
	},
	on_place = core.rotate_node,
})
core.register_craft({
	output = "mycastle:wall_covering 8",
	recipe = {
			{"wool:red","wool:red",""},
			{"wool:red","wool:red",""},
			{"","",""},
			}
})
minetest.register_node("mycastle:wall_covering2", {
	description = "Wall Covering",
	tiles = {
			"wool_blue.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		},
	},
	on_place = core.rotate_node,
})
core.register_craft({
	output = "mycastle:wall_covering2 8",
	recipe = {
			{"wool:blue","wool:blue",""},
			{"wool:blue","wool:blue",""},
			{"","",""},
			}
})
minetest.register_node("mycastle:wall_covering3", {
	description = "Wall Covering",
	tiles = {
			"wool_black.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		},
	},
	on_place = core.rotate_node,
})
core.register_craft({
	output = "mycastle:wall_covering3 8",
	recipe = {
			{"wool:black","wool:black",""},
			{"wool:black","wool:black",""},
			{"","",""},
			}
})
minetest.register_node("mycastle:tapestry", {
	description = "Tapestry",
	tiles = {
			"wool_orange.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_tapestry.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},

	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
		}
	}
})
core.register_craft({
	output = "mycastle:tapestry 8",
	recipe = {
			{"wool:orange","wool:orange",""},
			{"wool:orange","wool:orange",""},
			{"","",""},
			}
})
core.register_node("mycastle:small_stand", {
	description = "Small Stand",
	drawtype = "mesh",
	mesh = "mycastle_stand_sm.obj",
	tiles = {
			"mycastle_wood2.png",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {cracky = 2, choppy = 2},


})
core.register_craft({
	output = "mycastle:small_stand",
	recipe = {
			{"","",""},
			{"","mycastle:castle_wood",""},
			{"","mycastle:castle_wood",""},
			}
})

core.register_node("mycastle:candle", {
	description = "Candle",
	tiles = {
		{name="mycastle_candle.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=0.3}},
	},
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "mycastle_candle.obj",
	light_source = 9,
	sunlight_propagates = true,
	groups = {cracky = 2, choppy = 2},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, 0, 0.0625},
			{-0.25, -0.5, -0.125, 0.25, -0.4375, 0.125},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.4375, 0.1875},
			{-0.125, -0.5, -0.25, 0.125, -0.4375, 0.25},
		}
	},

})
core.register_craft({
	output = "mycastle:candle",
	recipe = {
			{"","",""},
			{"","default:torch",""},
			{"","mycastle:castle_wood",""},
			}
})
