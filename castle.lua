minetest.register_node("mycastle:bars", {
	description = "Bars",
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
		},
	}
})
minetest.register_node("mycastle:cross_bars", {
	description = "Cross Bars",
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
			{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, 0.125, 0.5, -0.4375, 0.1875},
			{-0.5, -0.5, -0.1875, 0.5, -0.4375, -0.125},
			{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
			{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
			{-0.1875, -0.5, -0.5, -0.125, -0.4375, 0.5},
			{0.125, -0.5, -0.5, 0.1875, -0.4375, 0.5},
		},
	},
	on_place = minetest.rotate_node
})
minetest.register_node("mycastle:castle_top", {
	description = "Castle Top",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.25, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, 0, 0.5},
			{0.25, -0.5, 0, 0.5, 0.5, 0.5},
		},
	}
})
minetest.register_node("mycastle:castle_top_corner", {
	description = "Castle Top Corner",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
	}
})
minetest.register_node("mycastle:castle_top_inside_corner", {
	description = "Castle Top Inside Corner",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
	}
})
minetest.register_node("mycastle:archer_hole", {
	description = "Archer Hole",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.25, -0.25, 0.5, 0.25},
			{-0.5, -0.5, -0.25, 0.5, -0.375, 0.25},
			{0.25, -0.5, -0.25, 0.5, 0.5, 0.25},
			{-0.5, 0.375, -0.25, 0.5, 0.5, 0.25},
		},
	}
})
minetest.register_node("mycastle:arch", {
	description = "Arch",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.5, 0, -0.0625, 0.5, 0.3125, 0},
			{-0.5, 0, -0.125, 0.5, 0.25, -0.0625},
			{-0.5, 0, -0.1875, 0.5, 0.1875, -0.125},
			{-0.5, 0, -0.25, 0.5, 0.125, -0.1875},
		},
	},
	on_place = minetest.rotate_node
})
minetest.register_node("mycastle:arch_side", {
	description = "Arch Side",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	},
	
	on_place = minetest.rotate_node
})
minetest.register_node("mycastle:corner_piece", {
	description = "Corner Piece",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.375, 0.25, 0.5, 0.5, 0.5},
			{-0.5, -0.25, 0.125, 0.5, 0.5, 0.5},
			{-0.5, -0.125, 0, 0.5, 0.5, 0.5},
			{-0.5, 0, -0.125, 0.5, 0.5, 0.5},
			{-0.5, 0.125, -0.25, 0.5, 0.5, 0.5},
			{-0.5, 0.25, -0.375, 0.5, 0.5, 0.5},
			{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
		},
	},
	
	on_place = minetest.rotate_node
})
minetest.register_node("mycastle:concrete_block", {
	description = "Concrete Block",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:red_flag", {
	description = "Red Flag",
	tiles = {
			"mycastle_flag.png^[transformR270",
			"mycastle_flag.png",
			"mycastle_flag_right.png",
			"mycastle_flag_pole.png^[transformR180",
			"mycastle_flag.png^[transformR180",
			"mycastle_flag.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.125, -0.3125, 0.5, 0.0625},
			{-0.3125, 0.125, -0.0625, -0.125, 0.5, 0},
			{-0.1875, 0.125, -0.125, 0, 0.5, -0.0625},
			{-0.0625, 0.1875, -0.0625, 0.125, 0.4375, 0},
			{0.0625, 0.1875, 0, 0.25, 0.4375, 0.0625},
			{0.1875, 0.1875, -0.0625, 0.375, 0.4375, 0},
			{0.3125, 0.25, -0.125, 0.5, 0.375, -0.0625},
		},
	},
})
minetest.register_node("mycastle:fence", {
	description = "Fence",
	tiles = {
			"mycastle_fence.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, 0.375, -0.375, 0.5, 0.4375},
			{-0.1875, -0.5, 0.375, -0.125, 0.5, 0.4375},
			{0.0625, -0.5, 0.375, 0.125, 0.5, 0.4375},
			{0.3125, -0.5, 0.375, 0.375, 0.5, 0.4375},
			{-0.5, 0.125, 0.375, 0.5, 0.1875, 0.4375},
			{-0.5, -0.375, 0.375, 0.5, -0.3125, 0.4375},
		},
	},
})
minetest.register_node("mycastle:fence_top", {
	description = "Fence Top",
	tiles = {
			"mycastle_fence.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, 0.375, -0.375, 0.5, 0.4375},
			{-0.5, 0.25, 0.3125, -0.3125, 0.375, 0.5},
			{-0.1875, -0.5, 0.375, -0.125, 0.5, 0.4375},
			{0.0625, -0.5, 0.375, 0.125, 0.5, 0.4375},
			{0.3125, -0.5, 0.375, 0.375, 0.5, 0.4375},
			{-0.25, 0.25, 0.3125, -0.0625, 0.375, 0.5},
			{0, 0.25, 0.3125, 0.1875, 0.375, 0.5},
			{0.25, 0.25, 0.3125, 0.4375, 0.375, 0.5},
			{-0.5, 0.125, 0.375, 0.5, 0.1875, 0.4375},
			{-0.5, -0.375, 0.375, 0.5, -0.3125, 0.4375},
		},
	},
})
minetest.register_node("mycastle:shield", {
	description = "Shield",
	tiles = {
			"mycastle_shield.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.0625, 0.5, -0.4375, 0.0625},
			{-0.4375, -0.5, -0.125, 0.4375, -0.4375, 0.125},
			{-0.375, -0.5, -0.1875, 0.375, -0.4375, 0.1875},
			{-0.3125, -0.5, -0.25, 0.3125, -0.4375, 0.25},
			{-0.3125, -0.5, -0.3125, 0.25, -0.4375, 0.3125},
			{-0.375, -0.5, 0.3125, 0.1875, -0.4375, 0.375},
			{-0.375, -0.5, -0.375, 0.1875, -0.4375, -0.3125},
			{-0.4375, -0.5, -0.4375, 0.125, -0.4375, -0.375},
			{-0.4375, -0.5, 0.375, 0.125, -0.4375, 0.4375},
		},
	},
	on_place = minetest.rotate_node
})
minetest.register_node("mycastle:sword", {
	description = "Sword",
	tiles = {
			"mycastle_shield.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0.5, -0.4375, 0.0625},
			{-0.4375, -0.5, -0.0625, 0.5, -0.4375, 0.125},
			{0.1875, -0.5, -0.1875, 0.25, -0.4375, 0.25},
		},
	},
	on_place = minetest.rotate_node
})
