local block_table = {
					{"big_dark_stone","Big Dark Stone"},
					{"block","Block"},
					{"brick","Brick"},
					{"brick2","Brick 2"},
					{"brick_small","Small Brick"},
					{"checplate","Checker Plate"},
					{"cobble","Cobble"},
					{"dark_block","Dark Block"},
					{"dark_brick","Dark Brick"},
					{"dark_brick2","Dark Brick 2"},
					{"dark_brick_small","Small Dark Brick"},
					{"dark_cobble","Dark Cobble"},
					{"dark_fancy_block","Dark Fancy Block"},
					{"dark_hsplit","Dark Horizontal Split"},
					{"dark_squares","Dark Squares"},
					{"dark_squares_small","Small Dark Squares"},
					{"dark_vsplit","Dark Vertical Split"},
					{"fancy_block","Fancy Block"},
					{"hsplit","Horizontal Split"},
					{"pavers","Pavers"},
					{"red_block","Red Block"},
					{"red_brick","Red Brick"},
					{"red_brick2","Red Brick 2"},
					{"red_brick_small","Small Red Brick"},
					{"red_cobble","Red Cobble"},
					{"red_fancy_block","Red Fancy Block"},
					{"red_hsplit","Red Horizontal Split"},
					{"red_vsplit","Red Vertical Split"},
					{"squares","Squares"},
					{"squares_small","Small Squares"},
					{"vsplit","Vertical Split"},
					{"black_cobble","Black Cobble"},
					{"white_cobble","White Cobble"},
					{"tan_cobble","Tan Cobble"},
					{"concrete_block","Concrete Block"},
}



for i in ipairs(block_table) do
	local mat = block_table[i][1]
	local des = block_table[i][2]



stairs.register_stair_and_slab("mycastle:stairs_"..mat,
			"mycastle:"..mat, 
			{cracky=2}, 
			{"mycastle_"..mat..".png"},
			des.." Stairs", 
			des.." Slab", 
			default.node_sound_wood_defaults(), 
			"mycastle_"..mat..".png",
			des.." Inner Stairs", 
			des.." Outer Stairs")
end

core.register_node("mycastle:rail_stairs_right", {
	description = "Right Stair Rail",
	drawtype = "nodebox",
	tiles = {
			"mycastle_wood.png",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {cracky = 2, choppy = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{0.375, -1, -0.125, 0.5, -0.0625, 0},
			{0.375, -0.5, 0.375, 0.5, 0.4375, 0.5},
			{0.375, 0.4375, 0.375, 0.5, 0.5625, 0.5},
			{0.375, 0.3125, 0.25, 0.5, 0.4375, 0.5},
			{0.375, 0.1875, 0.125, 0.5, 0.3125, 0.375},
			{0.375, 0.0625, 0, 0.5, 0.1875, 0.25},
			{0.375, -0.0625, -0.125, 0.5, 0.0625, 0.125},
			{0.375, -0.1875, -0.25, 0.5, -0.0625, 0},
			{0.375, -0.3125, -0.375, 0.5, -0.1875, -0.125},
			{0.375, -0.4375, -0.5, 0.5, -0.3125, -0.25},
			{0.375, -0.5625, -0.5, 0.5, -0.3125, -0.375},
		}
	},

})
core.register_node("mycastle:rail_stairs_left", {
	description = "Left Stair Rail",
	drawtype = "nodebox",
	tiles = {
			"mycastle_wood.png",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {cracky = 2, choppy = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -1, -0.125, -0.5, -0.0625, 0},
			{-0.375, -0.5, 0.375, -0.5, 0.4375, 0.5},
			{-0.375, 0.4375, 0.375, -0.5, 0.5625, 0.5},
			{-0.375, 0.3125, 0.25, -0.5, 0.4375, 0.5},
			{-0.375, 0.1875, 0.125, -0.5, 0.3125, 0.375},
			{-0.375, 0.0625, 0, -0.5, 0.1875, 0.25},
			{-0.375, -0.0625, -0.125, -0.5, 0.0625, 0.125},
			{-0.375, -0.1875, -0.25, -0.5, -0.0625, 0},
			{-0.375, -0.3125, -0.375, -0.5, -0.1875, -0.125},
			{-0.375, -0.4375, -0.5, -0.5, -0.3125, -0.25},
			{-0.375, -0.5625, -0.5, -0.5, -0.3125, -0.375},
		}
	},

})
core.register_node("mycastle:rail", {
	description = "Rail",
	drawtype = "nodebox",
	tiles = {
			"mycastle_wood.png",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {cracky = 2, choppy = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, 0.375, -0.25, 0.5, 0.5},
			{0.25, -0.5, 0.375, 0.375, 0.5, 0.5},
			{-0.5, 0.3125, 0.375, 0.5, 0.5, 0.5},
			{-0.375, -0.3125, 0.375, 0.375, -0.1875, 0.5},
			{0.0625, -0.3125, 0.375, 0.125, 0.3125, 0.5},
			{-0.125, -0.3125, 0.375, -0.0625, 0.3125, 0.5},
		}
	},

})
core.register_craft({
	output = "mycastle:rail_stairs_right 5",
	recipe = {
			{"mycastle:castle_wood","",""},
			{"","mycastle:castle_wood",""},
			{"","","mycastle:castle_wood"},
			}
})
core.register_craft({
	output = "mycastle:rail_stairs_left 5",
	recipe = {
			{"","","mycastle:castle_wood"},
			{"","mycastle:castle_wood",""},
			{"mycastle:castle_wood","",""},
			}
})
core.register_craft({
	output = "mycastle:rail 5",
	recipe = {
			{"","",""},
			{"mycastle:castle_wood","mycastle:castle_wood","mycastle:castle_wood"},
			{"","",""},
			}
})
