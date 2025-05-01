local stone_table = {
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
					}
for i in ipairs(stone_table) do
	local nam = stone_table[i][1]
	local des = stone_table[i][2]

minetest.register_node("mycastle:"..nam, {
	description = des,
	tiles = {
			"mycastle_"..nam..".png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
end
--[[
minetest.register_node("mycastle:dark_stone", {
	description = "Dark Stone",
	tiles = {
			"mycastle_dark_stone.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:red_stone", {
	description = "Red Stone",
	tiles = {
			"mycastle_red_stone.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:red_brick", {
	description = "Red Brick",
	tiles = {
			"mycastle_red_brick.png",
			},
	drawtype = "normal",
	paramtype = "light",
--	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:grey_brick", {
	description = "Grey Brick",
	tiles = {
			"mycastle_grey_brick.png",
			},
	drawtype = "normal",
	paramtype = "light",
--	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:dark_brick", {
	description = "Dark Brick",
	tiles = {
			"mycastle_dark_brick.png",
			},
	drawtype = "normal",
	paramtype = "light",
--	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:big_red_stone", {
	description = "Big Red Stone",
	tiles = {
			"mycastle_big_red_stone.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:big_grey_stone", {
	description = "Big Grey Stone",
	tiles = {
			"mycastle_big_grey_stone.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:big_dark_stone", {
	description = "Big Dark Stone",
	tiles = {
			"mycastle_big_dark_stone.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:pavers", {
	description = "Pavers",
	tiles = {
			"mycastle_pavers.png",
			},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:checker_plate", {
	description = "Checker Plate",
	tiles = {
			"mycastle_checplate.png",
			},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:black_cobble", {
	description = "Black Cobble",
	tiles = {
			"mycastle_dark_cobble.png",
			},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:tan_cobble", {
	description = "Tan Cobble",
	tiles = {
			"mycastle_tan_cobble.png",
			},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:white_cobble", {
	description = "White Cobble",
	tiles = {
			"mycastle_white_cobble.png",
			},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
--
minetest.register_node("mycastle:cobble_corner", {
	description = "Cobble Corner",
	tiles = {
			"mycastle_dark_cobble.png",
			"mycastle_dark_cobble.png",
			"mycastle_corner_left.png",
			"mycastle_dark_cobble.png",
			"mycastle_dark_cobble.png",
			"mycastle_corner_right.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
minetest.register_node("mycastle:cobble_corner2", {
	description = "Cobble Corner 2",
	tiles = {
			"mycastle_tan_cobble.png",
			"mycastle_tan_cobble.png",
			"mycastle_corner_right.png",
			"mycastle_tan_cobble.png",
			"mycastle_tan_cobble.png",
			"mycastle_corner_left.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})

--]]
