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
--	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
})
end
core.register_craft({
	type = "shapeless",
	output = "mycastle:cobble",
	recipe = {"default:cobble"}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:white_cobble",
	recipe = {"mycastle:cobble","dye:white"}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:dark_cobble",
	recipe = {"mycastle:cobble","dye:dark_grey"}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:red_cobble",
	recipe = {"mycastle:cobble","dye:red"}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:tan_cobble",
	recipe = {"mycastle:cobble","dye:yellow"}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:black_cobble",
	recipe = {"mycastle:cobble","dye:black"}
})
core.register_craft({
	output = "mycastle:brick 4",
	recipe = {
			{"mycastle:cobble","mycastle:cobble",""},
			{"mycastle:cobble","mycastle:cobble",""},
			{"","",""},
			}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:brick2",
	recipe = {"mycastle:brick"}
})
core.register_craft({
	output = "mycastle:dark_brick 4",
	recipe = {
			{"mycastle:dark_cobble","mycastle:dark_cobble",""},
			{"mycastle:dark_cobble","mycastle:dark_cobble",""},
			{"","",""},
			}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:dark_brick2",
	recipe = {"mycastle:dark_brick"}
})
core.register_craft({
	output = "mycastle:red_brick 4",
	recipe = {
			{"mycastle:red_cobble","mycastle:red_cobble",""},
			{"mycastle:red_cobble","mycastle:red_cobble",""},
			{"","",""},
			}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:red_brick2",
	recipe = {"mycastle:red_brick"}
})
core.register_craft({
	output = "mycastle:block 4",
	recipe = {
			{"mycastle:brick","mycastle:brick",""},
			{"mycastle:brick","mycastle:brick",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:dark_block 4",
	recipe = {
			{"mycastle:dark_brick","mycastle:dark_brick",""},
			{"mycastle:dark_brick","mycastle:dark_brick",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:red_block 4",
	recipe = {
			{"mycastle:red_brick","mycastle:red_brick",""},
			{"mycastle:red_brick","mycastle:red_brick",""},
			{"","",""},
			}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:brick_small",
	recipe = {"mycastle:brick","mycastle:brick"}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:dark_brick_small",
	recipe = {"mycastle:dark_brick","mycastle:dark_brick"}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:red_brick_small",
	recipe = {"mycastle:red_brick","mycastle:red_brick"}
})
core.register_craft({
	output = "mycastle:dark_hsplit 2",
	recipe = {
			{"mycastle:dark_block","mycastle:dark_block",""},
			{"","",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:dark_vsplit 2",
	recipe = {
			{"mycastle:dark_block","",""},
			{"mycastle:dark_block","",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:red_hsplit 2",
	recipe = {
			{"mycastle:red_block","mycastle:red_block",""},
			{"","",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:red_vsplit 2",
	recipe = {
			{"mycastle:red_block","",""},
			{"mycastle:red_block","",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:hsplit 2",
	recipe = {
			{"mycastle:block","mycastle:block",""},
			{"","",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:vsplit 2",
	recipe = {
			{"mycastle:block","",""},
			{"mycastle:block","",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:squares 4",
	recipe = {
			{"mycastle:block","mycastle:block",""},
			{"mycastle:block","mycastle:block",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:squares_small 4",
	recipe = {
			{"mycastle:squares","mycastle:squares",""},
			{"mycastle:squares","mycastle:squares",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:dark_squares 4",
	recipe = {
			{"mycastle:dark_block","mycastle:dark_block",""},
			{"mycastle:dark_block","mycastle:dark_block",""},
			{"","",""},
			}
})
core.register_craft({
	output = "mycastle:dark_squares_small 4",
	recipe = {
			{"mycastle:dark_squares","mycastle:dark_squares",""},
			{"mycastle:dark_squares","mycastle:dark_squares",""},
			{"","",""},
			}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:red_fancy_block 2",
	recipe = {"mycastle:red_brick","mycastle:red_block"}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:dark_fancy_block 2",
	recipe = {"mycastle:dark_brick","mycastle:dark_block"}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:fancy_block 2",
	recipe = {"mycastle:brick","mycastle:block"}
})
core.register_craft({
	output = "mycastle:pavers 4",
	recipe = {
			{"mycastle:dark_brick_small","mycastle:dark_brick_small",""},
			{"mycastle:dark_brick_small","mycastle:dark_brick_small",""},
			{"","",""},
			}
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:checplate",
	recipe = {"mycastle:block","default:steel_ingot"}
})
core.register_craft({
	output = "mycastle:big_dark_stone 3",
	recipe = {
			{"mycastle:dark_block","mycastle:dark_block",""},
			{"mycastle:dark_block","",""},
			{"","",""},
			}
})


