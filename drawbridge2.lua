local function get_rotated_offset(base_offset, param2)
	if param2 == nil then
		return {x=0, y=0, z=0}
	end

	local fwd_v = core.facedir_to_dir(param2)
	local right_v = {x=fwd_v.z, y=fwd_v.y, z=-fwd_v.x}
	local up_v = {x=0, y=1, z=0}
	local rotated_offset = vector.add(
		vector.multiply(right_v, base_offset.x),
		vector.add(
			vector.multiply(up_v, base_offset.y),
			vector.multiply(fwd_v, base_offset.z)
		)
	)
	return rotated_offset
end

local up_offsets = {
	{x=0, y=1, z=0},
	{x=0, y=2, z=0},
	{x=0, y=3, z=0},
	{x=0, y=4, z=0},
	{x=0, y=5, z=0},
	{x=0, y=6, z=0},
	{x=0, y=7, z=0},
	{x=1, y=0, z=0},
	{x=1, y=1, z=0},
	{x=1, y=2, z=0},
	{x=1, y=3, z=0},
	{x=1, y=4, z=0},
	{x=1, y=5, z=0},
	{x=1, y=6, z=0},
	{x=1, y=7, z=0},
	{x=2, y=0, z=0},
	{x=2, y=1, z=0},
	{x=2, y=2, z=0},
	{x=2, y=3, z=0},
	{x=2, y=4, z=0},
	{x=2, y=5, z=0},
	{x=2, y=6, z=0},
	{x=2, y=7, z=0},
	{x=3, y=0, z=0},
	{x=3, y=1, z=0},
	{x=3, y=2, z=0},
	{x=3, y=3, z=0},
	{x=3, y=4, z=0},
	{x=3, y=5, z=0},
	{x=3, y=6, z=0},
	{x=3, y=7, z=0},
	{x=4, y=0, z=0},
	{x=4, y=1, z=0},
	{x=4, y=2, z=0},
	{x=4, y=3, z=0},
	{x=4, y=4, z=0},
	{x=4, y=5, z=0},
	{x=4, y=6, z=0},
	{x=4, y=7, z=0},
	{x=5, y=0, z=0},
	{x=5, y=1, z=0},
	{x=5, y=2, z=0},
	{x=5, y=3, z=0},
	{x=5, y=4, z=0},
	{x=5, y=5, z=0},
	{x=5, y=6, z=0},
	{x=5, y=7, z=0},
}

local down_offsets = {
	{x=0, y=0, z=1},
	{x=0, y=0, z=2},
	{x=0, y=0, z=3},
	{x=0, y=0, z=4},
	{x=0, y=0, z=5},
	{x=0, y=0, z=6},
	{x=0, y=0, z=7},
	{x=1, y=0, z=0},
	{x=1, y=0, z=1},
	{x=1, y=0, z=2},
	{x=1, y=0, z=3},
	{x=1, y=0, z=4},
	{x=1, y=0, z=5},
	{x=1, y=0, z=6},
	{x=1, y=0, z=7},
	{x=2, y=0, z=0},
	{x=2, y=0, z=1},
	{x=2, y=0, z=2},
	{x=2, y=0, z=3},
	{x=2, y=0, z=4},
	{x=2, y=0, z=5},
	{x=2, y=0, z=6},
	{x=2, y=0, z=7},
	{x=3, y=0, z=0},
	{x=3, y=0, z=1},
	{x=3, y=0, z=2},
	{x=3, y=0, z=3},
	{x=3, y=0, z=4},
	{x=3, y=0, z=5},
	{x=3, y=0, z=6},
	{x=3, y=0, z=7},
	{x=4, y=0, z=0},
	{x=4, y=0, z=1},
	{x=4, y=0, z=2},
	{x=4, y=0, z=3},
	{x=4, y=0, z=4},
	{x=4, y=0, z=5},
	{x=4, y=0, z=6},
	{x=4, y=0, z=7},
	{x=5, y=0, z=0},
	{x=5, y=0, z=1},
	{x=5, y=0, z=2},
	{x=5, y=0, z=3},
	{x=5, y=0, z=4},
	{x=5, y=0, z=5},
	{x=5, y=0, z=6},
	{x=5, y=0, z=7},
}

core.register_node("mycastle:drawbridge_up_large",{
	description = "Drawbridge (Up) Large",
	tiles = {"mycastle_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.375},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 5.5, 7.5, -0.375},
		}
	},

	after_place_node = function(pos, placer, itemstack, pointed_thing)
		local node = core.get_node(pos)
		local par = node.param2

		for i, base_offset in ipairs(up_offsets) do
			local rotated_offset = get_rotated_offset(base_offset, par)
			local target_pos = vector.add(pos, rotated_offset)
			local success = core.set_node(target_pos, {name="mycastle:drawbridge_up2_large", param2 = par})
		end
	end,

	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		if clicker and clicker:is_player() then
			local par = node.param2
			local player_name = clicker:get_player_name()

			local can_lower = true

			for _, base_offset in ipairs(up_offsets) do
				local rotated_offset = get_rotated_offset(base_offset, par)
				local target_pos = vector.add(pos, rotated_offset)
				if core.is_protected(target_pos, player_name) and not core.is_owner(target_pos, player_name) then
					can_lower = false
					core.chat_send_player(player_name, "Area is protected.")
					break
				end
			end

			if can_lower and core.is_protected(pos, player_name) and not core.is_owner(pos, player_name) then
				can_lower = false
				core.chat_send_player(player_name, "Area is protected.")
			end

			if can_lower then
				for _, base_offset in ipairs(down_offsets) do
					local rotated_offset = get_rotated_offset(base_offset, par)
					local target_pos = vector.add(pos, rotated_offset)
					if core.is_protected(target_pos, player_name) and not core.is_owner(target_pos, player_name) then
						can_lower = false
						core.chat_send_player(player_name, "Area is protected.")
						break
					end
				end
			end

			if can_lower then
				for _, base_offset in ipairs(up_offsets) do
					local rotated_offset = get_rotated_offset(base_offset, par)
					local target_pos = vector.add(pos, rotated_offset)
					core.remove_node(target_pos)
				end

				core.swap_node(pos, {name="mycastle:drawbridge_down_large", param2 = par})

				for _, base_offset in ipairs(down_offsets) do
					local rotated_offset = get_rotated_offset(base_offset, par)
					local target_pos = vector.add(pos, rotated_offset)
					core.set_node(target_pos, {name="mycastle:drawbridge_down2_large", param2 = par})
				end
			end
		end
	end,

	on_destruct = function(pos)

		local node = core.get_node(pos)

		if node.name == "mycastle:drawbridge_up_large" then
			local par = node.param2

			for _, base_offset in ipairs(up_offsets) do
				local rotated_offset = get_rotated_offset(base_offset, par)
				local target_pos = vector.add(pos, rotated_offset)
				core.remove_node(target_pos)
			end
		end
	end,
})

core.register_node("mycastle:drawbridge_down_large",{
	description = "Drawbridge (Down) Large 6x8",
	tiles = {"mycastle_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 5.5, -0.375, 7.5},
		}
	},
	on_place = function(itemstack, placer, pointed_thing)
		if not pointed_thing or pointed_thing.type ~= "node" then
			return itemstack
		end

		local pos = pointed_thing.above

		if not core.is_player(placer) then
			return itemstack
		end

		local player_name = placer:get_player_name()

		local dir = placer:get_look_dir()
		local param2 = core.dir_to_facedir(dir)

		local offsets_to_check = {{x=0, y=0, z=0}}
		for _, offset in ipairs(down_offsets) do
			table.insert(offsets_to_check, offset)
		end

		local can_place = true

		for i, base_offset in ipairs(offsets_to_check) do
			local rotated_offset = get_rotated_offset(base_offset, param2)
			local target_pos = vector.add(pos, rotated_offset)

			if core.is_protected(target_pos, player_name) and not core.is_owner(target_pos, player_name) then
				can_place = false
				core.chat_send_player(player_name, "Area is protected.")
				break
			end

			local node_at_target = core.get_node(target_pos)

			if node_at_target.name ~= "air" then
				can_place = false
				core.chat_send_player(player_name, "Area is not clear.")
				break
			end
		end
		if can_place then
			local success = core.set_node(pos, {name="mycastle:drawbridge_down_large", param2 = param2})
			itemstack:take_item(1)
			if success then
				core.after(0, function()
					local current_node = core.get_node(pos)
					if current_node.name == "mycastle:drawbridge_down_large" then
						local current_par = current_node.param2

						core.set_node(pos, {name="air"})
						core.set_node(pos, {name="mycastle:drawbridge_down_large", param2 = current_par})

						for i, base_offset in ipairs(down_offsets) do
							local rotated_offset = get_rotated_offset(base_offset, current_par)
							local target_pos = vector.add(pos, rotated_offset)
							local part_place_success = core.set_node(target_pos, {name="mycastle:drawbridge_down2_large", param2 = current_par})
						end
					end
				end)
			end

			return itemstack
		else
			return itemstack
		end
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		local node = core.get_node(pos)
		local par = node.param2

		for i, base_offset in ipairs(down_offsets) do
			local rotated_offset = get_rotated_offset(base_offset, par)
			local target_pos = vector.add(pos, rotated_offset)

			local success = core.set_node(target_pos, {name="mycastle:drawbridge_down2_large", param2 = par})
		end
	end,

	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		if clicker and clicker:is_player() then
			local par = node.param2
			local player_name = clicker:get_player_name()

			local can_raise = true

			for _, base_offset in ipairs(down_offsets) do
				local rotated_offset = get_rotated_offset(base_offset, par)
				local target_pos = vector.add(pos, rotated_offset)
				if core.is_protected(target_pos, player_name) and not core.is_owner(target_pos, player_name) then
					can_raise = false
					core.chat_send_player(player_name, "Area is protected.")
					break
				end
			end

			if can_raise and core.is_protected(pos, player_name) and not core.is_owner(pos, player_name) then
				can_raise = false
				core.chat_send_player(player_name, "Area is protected.")
			end

			if can_raise then
				for _, base_offset in ipairs(up_offsets) do
					local rotated_offset = get_rotated_offset(base_offset, par)
					local target_pos = vector.add(pos, rotated_offset)
					if core.is_protected(target_pos, player_name) and not core.is_owner(target_pos, player_name) then
						can_raise = false
						core.chat_send_player(player_name, "Area is protected.")
						break
					end
				end
			end

			if can_raise then
				for _, base_offset in ipairs(down_offsets) do
					local rotated_offset = get_rotated_offset(base_offset, par)
					local target_pos = vector.add(pos, rotated_offset)
					core.remove_node(target_pos)
				end

				core.swap_node(pos, {name="mycastle:drawbridge_up_large", param2 = par})

				for _, base_offset in ipairs(up_offsets) do
					local rotated_offset = get_rotated_offset(base_offset, par)
					local target_pos = vector.add(pos, rotated_offset)
					core.set_node(target_pos, {name="mycastle:drawbridge_up2_large", param2 = par})
				end
			end
		end
	end,

	on_destruct = function(pos)

		local node = core.get_node(pos)

		if node.name == "mycastle:drawbridge_down_large" then
			local par = node.param2

			for _, base_offset in ipairs(down_offsets) do
				local rotated_offset = get_rotated_offset(base_offset, par)
				local target_pos = vector.add(pos, rotated_offset)
				core.remove_node(target_pos)
			end
		end
	end,
})

core.register_node("mycastle:drawbridge_up2_large",{
	description = "Drawbridge Part (Up)",
	tiles = {"mycastle_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.375},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
		}
	},
	on_place = function() end,
	on_destruct = function() end,
})

core.register_node("mycastle:drawbridge_down2_large",{
	description = "Drawbridge Part (Down)",
	tiles = {"mycastle_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
		}
	},
	on_place = function() end,
	on_destruct = function() end,
})

core.register_craft({
	output = "mycastle:drawbridge_down_large 1",
	recipe = {
			{"mycastle:castle_wood","mycastle:castle_wood","mycastle:castle_wood"},
			{"mycastle:castle_wood","mycastle:castle_wood","mycastle:castle_wood"},
			{"mycastle:castle_wood","mycastle:castle_wood","mycastle:castle_wood"},
			}
})
