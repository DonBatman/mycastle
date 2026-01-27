core.register_node("mycastle:bars", {
	description = "Bars",
	tiles = {
			"mycastle_bars2.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_bars.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},

	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0.5, 0.5, 0.0625},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0.5, 0.5, 0.0625},
		}
	},
})
core.register_craft({
	output = "mycastle:bars",
	recipe = {
			{"default:steel_ingot","","default:steel_ingot"},
			{"default:steel_ingot","","default:steel_ingot"},
			{"","",""},
			}
})
core.register_node("mycastle:cross_bars", {
	description = "Cross Bars",
	tiles = {
			"mycastle_bars2.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_crossbars.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},

	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		}
	},
	on_place = core.rotate_node
})
core.register_craft({
	output = "mycastle:cross_bars",
	recipe = {
			{"default:steel_ingot","","default:steel_ingot"},
			{"","",""},
			{"default:steel_ingot","","default:steel_ingot"},
			}
})
core.register_node("mycastle:castle_top", {
	description = "Castle Top",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_castle_top.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, -0.25, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, 0, 0.5},
			{0.25, -0.5, 0, 0.5, 0.5, 0.5},
		},
	}
})
core.register_craft({
	output = "mycastle:castle_top 5",
	recipe = {
			{"mycastle:concrete_block","","mycastle:concrete_block"},
			{"mycastle:concrete_block","mycastle:concrete_block","mycastle:concrete_block"},
			{"","",""},
			}
})
core.register_node("mycastle:castle_top_corner", {
	description = "Castle Top Corner",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_castle_top_corner.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
	}
})
core.register_craft({
	output = "mycastle:castle_top_corner 4",
	recipe = {
			{"mycastle:concrete_block","",""},
			{"mycastle:concrete_block","mycastle:concrete_block","mycastle:concrete_block"},
			{"","",""},
			}
})
core.register_node("mycastle:castle_top_inside_corner", {
	description = "Castle Top Inside Corner",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_castle_top_inside_corner.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
	}
})
core.register_craft({
	output = "mycastle:castle_top_inside_corner 4",
	recipe = {
			{"mycastle:concrete_block","",""},
			{"mycastle:concrete_block","",""},
			{"","",""},
			}
})
core.register_node("mycastle:archer_hole", {
	description = "Archer Hole",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_archer_hole.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.25, -0.25, 0.5, 0.25},
			{-0.5, -0.5, -0.25, 0.5, -0.375, 0.25},
			{0.25, -0.5, -0.25, 0.5, 0.5, 0.25},
			{-0.5, 0.375, -0.25, 0.5, 0.5, 0.25},
		},
	}
})
core.register_craft({
	output = "mycastle:archer_hole 8",
	recipe = {
			{"mycastle:concrete_block","mycastle:concrete_block","mycastle:concrete_block"},
			{"mycastle:concrete_block","","mycastle:concrete_block"},
			{"mycastle:concrete_block","mycastle:concrete_block","mycastle:concrete_block"},
			}
})
core.register_node("mycastle:arch", {
	description = "Arch",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_arch.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	selection_box = {
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
	on_place = core.rotate_node
})
core.register_craft({
	output = "mycastle:arch 3",
	recipe = {
			{"","",""},
			{"mycastle:concrete_block","",""},
			{"mycastle:concrete_block","mycastle:concrete_block",""},
			}
})
core.register_node("mycastle:arch_side", {
	description = "Arch Side",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_arch_side.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	},
	
	on_place = core.rotate_node
})
core.register_craft({
	output = "mycastle:arch_side 3",
	recipe = {
			{"mycastle:concrete_block","",""},
			{"mycastle:concrete_block","",""},
			{"mycastle:concrete_block","",""},
			}
})
core.register_node("mycastle:corner_piece", {
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
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -0.4375, 0.5, -0.375, 0.5},
			{-0.5, -0.5, -0.375, 0.5, -0.3125, 0.5},
			{-0.5, -0.5, -0.3125, 0.5, -0.25, 0.5},
			{-0.5, -0.5, -0.25, 0.5, -0.1875, 0.5},
			{-0.5, -0.5, -0.1875, 0.5, -0.125, 0.5},
			{-0.5, -0.5, -0.125, 0.5, -0.0625, 0.5},
			{-0.5, -0.5, -0.0625, 0.5, 0, 0.5},
			{-0.5, -0.5, 0, 0.5, 0.0625, 0.5},
			{-0.5, -0.5, 0.0625, 0.5, 0.125, 0.5},
			{-0.5, -0.5, 0.125, 0.5, 0.1875, 0.5},
			{-0.5, -0.5, 0.1875, 0.5, 0.25, 0.5},
			{-0.5, -0.5, 0.25, 0.5, 0.3125, 0.5},
			{-0.5, -0.5, 0.3125, 0.5, 0.375, 0.5},
			{-0.5, -0.5, 0.375, 0.5, 0.4375, 0.5},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
		},
	},
	
	on_place = core.rotate_node
})
core.register_craft({
	output = "mycastle:corner_piece 3",
	recipe = {
			{"","",""},
			{"","","mycastle:concrete_block"},
			{"","mycastle:concrete_block","mycastle:concrete_block"},
			}
})
core.register_node("mycastle:concrete_block", {
	description = "Concrete Block",
	tiles = {
			"mycastle_concrete_block.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:concrete_block",
	recipe = {"default:gravel","group:grass"}
})
core.register_node("mycastle:red_flag", {
	description = "Red Flag",
	tiles = {
			"mycastle_flag.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_flag.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.125, -0.3125, 0.5, 0.0625},
			{-0.5, 0.125, -0.0625, 0.5, 0.5, 0},
		},
	},
})

core.register_craft({
	type = "shapeless",
	output = "mycastle:red_flag",
	recipe = {"default:stick","default:paper","dye:red"}
})
core.register_node("mycastle:fence", {
	description = "Fence",
	tiles = {
			"mycastle_fence.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_fence.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},

	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.4375},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.4375},
		}
	},
})
core.register_node("mycastle:fence_corner", {
	description = "Fence Corner",
	tiles = {
			"mycastle_fence.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_fence_corner.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},

	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.4375},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.4375},
		}
	},
})
core.register_craft({
	output = "mycastle:fence",
	recipe = {
			{"default:steel_ingot","","default:steel_ingot"},
			{"default:steel_ingot","dye:black","default:steel_ingot"},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:fence_corner",
	recipe = {
			{"mycastle:fence","",""},
			{"mycastle:fence","",""},
			{"","",""},
			}
})
core.register_node("mycastle:fence_top", {
	description = "Fence Top",
	tiles = {
			"mycastle_fence.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_fence_top.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.4375},
		}
	},	
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.4375},
		}
	},
})
core.register_node("mycastle:fence_top_corner", {
	description = "Fence Top Corner",
	tiles = {
			"mycastle_fence.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_fence_top_corner.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.4375},
		}
	},	
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.4375},
		}
	},
})
core.register_craft({
	output = "mycastle:fence_top",
	recipe = {
			{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
			{"default:steel_ingot","dye:black","default:steel_ingot"},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:fence_top_corner",
	recipe = {
			{"mycastle:fence_top","",""},
			{"mycastle:fence_top","",""},
			{"","",""},
			}
})
core.register_node("mycastle:shield", {
	description = "Shield",
	tiles = {
			"mycastle_shield2.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_shield.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},

	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.4375, 0.5, -0.4375, 0.4375},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.4375, 0.5, -0.4375, 0.4375},
		}
	},
	on_place = core.rotate_node
})
core.register_craft({
	output = "mycastle:shield 2",
	recipe = {
			{"default:steel_ingot","","default:steel_ingot"},
			{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
			{"","default:steel_ingot",""},
			}
})
core.register_node("mycastle:sword", {
	description = "Sword",
	tiles = {
			"mycastle_bars.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_sword.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},

	selection_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, -0.4375, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, -0.4375, 0.5},
		}
	},
	on_place = core.rotate_node
})
core.register_craft({
	output = "mycastle:sword",
	recipe = {
			{"default:steel_ingot","",""},
			{"default:steel_ingot","",""},
			{"default:stick","",""},
			}
})
core.register_node("mycastle:banner_top", {
	description = "Banner Top",
	drawtype = "mesh",
	mesh = "mycastle_banner_top.obj",
	tiles = {
			"mycastle_banner.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {cracky = 2, choppy = 2},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, 0.4375, 0.3125, 0.5, 0.5},
		}
	},

})
core.register_craft({
	output = "mycastle:banner_top",
	recipe = {
			{"default:paper","",""},
			{"default:paper","",""},
			{"","",""},
			}
})
core.register_node("mycastle:banner_bottom", {
	description = "Banner Bottom",
	drawtype = "mesh",
	mesh = "mycastle_banner_bottom.obj",
	tiles = {
			"mycastle_banner.png",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {cracky = 2, choppy = 2},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, 0.4375, 0.3125, 0.5, 0.5},
		}
	},

})
core.register_craft({
	output = "mycastle:banner_bottom",
	recipe = {
			{"","",""},
			{"default:paper","",""},
			{"default:paper","",""},
			}
})

minetest.register_node("mycastle:stairs", {
	description = "Stairs",
	drawtype = "mesh",
	mesh = "mycastle_stairs.obj",
	tiles = {
			"mycastle_wood.png",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {cracky=2},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.375, -0.5, 0.5, -0.3125, -0.1875},
			{-0.5, -0.125, -0.1875, 0.5, -0.0625, 0.125},
			{-0.5, 0.125, 0.125, 0.5, 0.1875, 0.5},
			{-0.375, -0.5, 0.1875, -0.3125, 0.1875, 0.4375},
			{0.3125, -0.5, 0.1875, 0.375, 0.1875, 0.4375},
			{0.3125, -0.5, -0.125, 0.375, -0.0625, 0.1875},
			{-0.375, -0.5, -0.125, -0.3125, -0.0625, 0.1875},
			{-0.375, -0.5, -0.4375, -0.3125, -0.375, -0.125},
			{0.3125, -0.5, -0.4375, 0.375, -0.375, -0.125},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.375, -0.5, 0.5, -0.3125, -0.1875},
			{-0.5, -0.125, -0.1875, 0.5, -0.0625, 0.125},
			{-0.5, 0.125, 0.125, 0.5, 0.1875, 0.5},
			{-0.375, -0.5, 0.1875, -0.3125, 0.1875, 0.4375},
			{0.3125, -0.5, 0.1875, 0.375, 0.1875, 0.4375},
			{0.3125, -0.5, -0.125, 0.375, -0.0625, 0.1875},
			{-0.375, -0.5, -0.125, -0.3125, -0.0625, 0.1875},
			{-0.375, -0.5, -0.4375, -0.3125, -0.375, -0.125},
			{0.3125, -0.5, -0.4375, 0.375, -0.375, -0.125},
		}
	},

})

core.register_craft({
	output = "mycastle:stairs 3",
	recipe = {
			{"","","mycastle:castle_wood"},
			{"","mycastle:castle_wood",""},
			{"mycastle:castle_wood","","mycastle:castle_wood"},
			}
})

core.register_node("mycastle:window_sil", {
	description = "Window Sil",
	tiles = {
			"mycastle_concrete_block.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.1875, 0.5, -0.25, 0.5},
		}
	},
	on_place = core.rotate_node,
})
core.register_craft({
	output = "mycastle:window_sil 4",
	recipe = {
			{"","",""},
			{"","",""},
			{"mycastle:concrete_block","mycastle:concrete_block","mycastle:concrete_block"},
			}
})
core.register_node("mycastle:window_sil_wood", {
	description = "Wood Window Sil",
	tiles = {
			"mycastle_wood2.png^[transformR90",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.1875, 0.5, -0.25, 0.5},
		}
	},
	on_place = core.rotate_node,
})
core.register_craft({
	output = "mycastle:window_sil_wood 4",
	recipe = {
			{"","",""},
			{"","",""},
			{"mycastle:castle_wood","mycastle:castle_wood","mycastle:castle_wood"},
			}
})
core.register_node("mycastle:bricks", {
	description = "Wood Window Sil",
	tiles = {
			"brick.png",
			},
	drawtype = "mesh",
	mesh = "brick.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.1875, 0.5, -0.25, 0.5},
		}
	},
	on_place = core.rotate_node,
})
