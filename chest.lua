-- 1. Helper for the formspec
function minetest.get_mycastle_formspec(pos)
    local spos = pos.x .. "," .. pos.y .. "," .. pos.z
    local formspec =
        "size[10,11]"..
        "background[-0.15,-0.25;10.25,11.25;mycastle_chest_background.png]"..
        "list[nodemeta:".. spos .. ";main;1,1;8,4;]"..
        "list[current_player;main;1,6;8,4;]"
    return formspec
end

-- 2. Register Unlocked Chest
minetest.register_node("mycastle:chest", {
    description = "Castle Chest",
    tiles = { "mycastle_chest_desert.png" },
    drawtype = "mesh",
    mesh = "mycastle_chest.obj",
    paramtype = "light",
    paramtype2 = "facedir",
    groups = {cracky = 2, oddly_breakable_by_hand = 2},
    
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:get_inventory():set_size("main", 8*4)
        meta:set_string("infotext", "Castle Chest")
    end,

    can_dig = function(pos, player)
        local inv = minetest.get_meta(pos):get_inventory()
        return inv:is_empty("main")
    end,

    on_rightclick = function(pos, node, clicker)
        minetest.show_formspec(clicker:get_player_name(), "mycastle:chest", minetest.get_mycastle_formspec(pos))
    end,
})

-- 3. Register Locked Chest
minetest.register_node("mycastle:chest_locked", {
    description = "Locked Castle Chest",
    tiles = { "mycastle_chest_desert_locked.png" }, -- You might want to make a '_locked.png' with a lock icon
    drawtype = "mesh",
    mesh = "mycastle_chest.obj",
    paramtype = "light",
    paramtype2 = "facedir",
    groups = {cracky = 2, oddly_breakable_by_hand = 2},
    
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:get_inventory():set_size("main", 8*4)
    end,

    after_place_node = function(pos, placer)
        if placer then
            local name = placer:get_player_name()
            local meta = minetest.get_meta(pos)
            meta:set_string("owner", name)
            meta:set_string("infotext", "Locked Castle Chest (Owned by: " .. name .. ")")
        end
    end,

    on_rightclick = function(pos, node, clicker)
        local meta = minetest.get_meta(pos)
        local name = clicker:get_player_name()
        if name ~= meta:get_string("owner") then
            minetest.chat_send_player(name, "This chest belongs to " .. meta:get_string("owner"))
            return
        end
        minetest.show_formspec(name, "mycastle:chest_locked", minetest.get_mycastle_formspec(pos))
    end,

    can_dig = function(pos, player)
        local meta = minetest.get_meta(pos)
        local inv = meta:get_inventory()
        return inv:is_empty("main") and player:get_player_name() == meta:get_string("owner")
    end,
})

-- 4. Pipeworks Overrides for Both
if minetest.get_modpath("pipeworks") and pipeworks and pipeworks.override_chest then
    local connect_sides = {left = 1, right = 1, back = 1, bottom = 1}
    
    -- Unlocked
    pipeworks.override_chest("mycastle:chest", {
        on_rightclick = minetest.registered_nodes["mycastle:chest"].on_rightclick,
    }, connect_sides)
    
    -- Locked
    pipeworks.override_chest("mycastle:chest_locked", {
        on_rightclick = minetest.registered_nodes["mycastle:chest_locked"].on_rightclick,
    }, connect_sides)
end

-- 5. Crafting
minetest.register_craft({
    output = "mycastle:chest_locked",
    recipe = {
        {"mycastle:chest", "default:steel_ingot"},
    }
})
