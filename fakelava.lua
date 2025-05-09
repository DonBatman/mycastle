minetest.register_node("mycastle:flava", {
	description = "Fake Lava",
	drawtype = "normal",
	tiles = {
		{name="mycastle_lava_ani.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1}}
		},
	paramtype = "light",
	sunlight_propagates = true,
	light_source = LIGHT_MAX-1,
	paramtype2 = "facedir",
	walkable = false,
	groups = {snappy = 2, cracky = 2, dig_immediate = 3},
	sounds = default.node_sound_stone_defaults(),

})

-- Walkable Fake Lava

minetest.register_node("mycastle:flava_w", {
	description = "Fake Lava Walkable",
	drawtype = "normal",
	tiles = {
		{name="mycastle_lava_ani.png", animation={type="vertical_frames",
		aspect_w=16, aspect_h=16, length=1}}
		},
	paramtype = "light",
	sunlight_propagates = true,
	light_source = LIGHT_MAX-1,
	paramtype2 = "facedir",
	walkable = true,
	groups = {snappy = 2, cracky = 2, dig_immediate = 3},
	sounds = default.node_sound_stone_defaults(),

})

-- crafting recipes:

minetest.register_craft({
	output = 'mycastle:flava',
	recipe = {
		{'default:stone','default:mese_crystal'},
		{'dye:red','default:torch'},
		}
})

minetest.register_craft({
	output = 'mycastle:flava_w',
	recipe = {
		{'default:stone','default:mese_crystal'},
		{'dye:red','default:stone'},
		}
})
