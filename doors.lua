doors.register_door("mycastle:door1", {
	description = "Door 1",
	inventory_image = "mycastle_door1_inv.png",
	groups = {choppy=2,cracky=2,door=1},
	tiles = {"mycastle_door1.png"},
	protected = true,
})
doors.register_door("mycastle:door2", {
	description = "Door 2",
	inventory_image = "mycastle_door2_inv.png",
	groups = {choppy=2,cracky=2,door=1},
	tiles = {"mycastle_door2.png"},
	protected = true,
})
doors.register_door("mycastle:door3", {
	description = "Door 3",
	inventory_image = "mycastle_door3_inv.png",
	groups = {choppy=2,cracky=2,door=1},
	tiles = {"mycastle_door3.png"},
	protected = true,
})



core.register_craft({
	output = "mycastle:door1",
	recipe = {
		{"mycastle:castle_wood","mycastle:castle_wood",""},
		{"mycastle:castle_wood","default:steel_ingot",""},
		{"mycastle:castle_wood","mycastle:castle_wood",""}
	}
})
core.register_craft({
	output = "mycastle:door2",
	recipe = {
		{"mycastle:castle_wood","default:steel_ingot",""},
		{"mycastle:castle_wood","mycastle:castle_wood",""},
		{"mycastle:castle_wood","mycastle:castle_wood",""}
	}
})
core.register_craft({
	output = "mycastle:door3",
	recipe = {
		{"mycastle:castle_wood","mycastle:castle_wood",""},
		{"mycastle:castle_wood","mycastle:castle_wood",""},
		{"mycastle:castle_wood","default:steel_ingot",""}
	}
})
