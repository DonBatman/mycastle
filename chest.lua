function minetest.get_mycastle_formspec(pos)
    local spos = pos.x .. "," .. pos.y .. "," ..pos.z
    local formspec =
        "size[10,11]"..
		"background[-0.15,-0.25;10.25,11.25;mycastle_chest_background.png]"..
        "list[nodemeta:".. spos .. ";main;1,1;8,4;]"..
        "list[current_player;main;1,6;8,4;]"
    return formspec
end

--Chest
minetest.register_node("mycastle:chest", {
	description = "Chest",
	tiles = {
			"mycastle_chest_desert.png",
			},
	drawtype = "mesh",
	mesh = "mycastle_chest.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2, oddly_breakable_by_hand = 2},
	on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string("infotext", "Chest")
        meta:set_string("owner", "")
        local inv = meta:get_inventory()
        inv:set_size("main", 8*4)
    end,

    can_dig = function(pos,player)

	local meta = minetest.env:get_meta({x=pos.x,y=pos.y+1,z=pos.z});
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
        local meta = minetest.get_meta(pos);
        local inv = meta:get_inventory()

        return inv:is_empty("main")
    end,
    allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
        local meta = minetest.get_meta(pos)

        return count
    end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
        local meta = minetest.get_meta(pos)
        return stack:get_count()
    end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
        local meta = minetest.get_meta(pos)
        return stack:get_count()
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = minetest.get_meta(pos)
            minetest.show_formspec(
                clicker:get_player_name(),
                "mycastle:chest",
                minetest.get_mycastle_formspec(pos)
            )
    end,
})
core.register_craft({
	output = "mycastle:chest",
	recipe = {
			{"mycastle:castle_wood","mycastle:castle_wood","mycastle:castle_wood"},
			{"mycastle:castle_wood","","mycastle:castle_wood"},
			{"mycastle:castle_wood","mycastle:castle_wood","mycastle:castle_wood"},
			}
})
