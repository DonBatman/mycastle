core.register_craftitem("mycastle:leaf_oil",{
		description = "Leaf Oil",
		inventory_image = "mycastle_leaf_oil.png",
})
core.register_craftitem("mycastle:castle_wood",{
		description = "Castle Wood",
		inventory_image = "mycastle_wood2.png",
})

core.register_craft({
	type = "cooking",
	output = "mycastle:leaf_oil",
	recipe = "group:leaves",
})
core.register_craft({
	type = "shapeless",
	output = "mycastle:castle_wood",
	recipe = {"group:wood","mycastle:leaf_oil"}
})
