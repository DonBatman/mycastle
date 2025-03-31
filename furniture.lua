minetest.register_node("mycastle:table", {
	description = "Table",
	tiles = {
			"mycastle_wood.png",
			"mycastle_wood.png",
			"mycastle_wood.png^[transformR90",
			"mycastle_wood.png^[transformR90",
			"mycastle_wood.png^[transformR90",
			"mycastle_wood.png^[transformR90",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.5, 0.5, 0.4375, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.5, -0.5, 0.5, 0.5, -0.375},
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, -0.375, 0.5, 0.5},
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375},
		},
	}
})
minetest.register_node("mycastle:chair", {
	description = "Chair",
	tiles = {
			"mycastle_wood.png",
			"mycastle_wood.png",
			"mycastle_wood.png^[transformR90",
			"mycastle_wood.png^[transformR90",
			"mycastle_wood.png^[transformR90",
			"mycastle_wood.png^[transformR90",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.125, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.125, -0.375},
			{0.375, -0.5, 0.375, 0.5, 0.125, 0.5},
			{-0.5, -0.5, 0.375, -0.375, 0.125, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.125, -0.375},
			{-0.5, 0.125, 0.375, -0.375, 0.875, 0.5},
			{0.375, 0.125, 0.375, 0.5, 0.875, 0.5},
			{-0.5, 0.375, 0.375, 0.5, 0.5, 0.5},
			{0.375, 0.375, -0.3125, 0.5, 0.5, 0.5},
			{-0.5, 0.375, -0.3125, -0.375, 0.5, 0.5},
			{-0.5, 0.0625, -0.1875, -0.375, 0.5, -0.0625},
			{0.375, 0.0625, -0.1875, 0.5, 0.5, -0.0625},
			{-0.5, 0.75, 0.375, 0.5, 0.875, 0.5},
		},
	}
})
minetest.register_node("mycastle:stand", {
	description = "Stand",
	tiles = {
			"mycastle_wood.png",
			"mycastle_wood.png",
			"mycastle_wood.png^[transformR90",
			"mycastle_wood.png^[transformR90",
			"mycastle_wood.png^[transformR90",
			"mycastle_wood.png^[transformR90",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, 0, 0.5, 0.4375, 0.5},
			{-0.5, -0.5, 0, -0.375, 0.5, 0.125},
			{0.375, -0.5, 0, 0.5, 0.5, 0.125},
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, -0.375, 0.5, 0.5},
			{-0.4375, 0.375, 0.0625, 0.4375, 0.5, 0.4375},
		},
	}
})
minetest.register_node("mycastle:wall_covering", {
	description = "Wall Covering",
	tiles = {
			"wool_red.png",
			"wool_red.png",
			"wool_red.png",
			"wool_red.png",
			"wool_red.png",
			"wool_red.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
		},
	}
})
minetest.register_node("mycastle:tapestry", {
	description = "Tapestry",
	tiles = {
			"wool_orange.png",
			"wool_orange.png",
			"wool_orange.png",
			"wool_orange.png",
			"wool_orange.png",
			"wool_orange.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, -0.25, 0.5, 0.5},
			{-0.125, -0.5, 0.4375, 0.125, 0.5, 0.5},
			{0.25, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{0.0625, -0.5, 0.375, 0.3125, 0.5, 0.4375},
			{-0.375, -0.5, 0.375, -0.0625, 0.5, 0.4375},
		},
	}
})
