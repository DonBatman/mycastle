dofile(core.get_modpath("mycastle").."/castle.lua")
dofile(core.get_modpath("mycastle").."/chest.lua")
dofile(core.get_modpath("mycastle").."/craftitems.lua")
dofile(core.get_modpath("mycastle").."/doors.lua")
dofile(core.get_modpath("mycastle").."/drawbridge.lua")
dofile(core.get_modpath("mycastle").."/drawbridge2.lua")
dofile(core.get_modpath("mycastle").."/fakelava.lua")
dofile(core.get_modpath("mycastle").."/fireplaces.lua")
dofile(core.get_modpath("mycastle").."/furniture.lua")
dofile(core.get_modpath("mycastle").."/lights.lua")
dofile(core.get_modpath("mycastle").."/stairs.lua")
dofile(core.get_modpath("mycastle").."/stoneblocks.lua")
dofile(core.get_modpath("mycastle").."/windows.lua")

if core.get_modpath("lucky_block") then
	lucky_block:add_blocks({
		{"dro", {"mycastle:red_flag"}, 1},
		{"dro", {"mycastle:drawbridge_down"}, 1},
		{"dro", {"mycastle:drawbridge_down_large"}, 1},
		{"dro", {"mycastle:flava"}, 1},
		{"dro", {"mycastle:flava_w"}, 1},
		{"dro", {"mycastle:fireplace1"}, 1},
		{"dro", {"mycastle:fireplace2"}, 1},
		{"dro", {"mycastle:table"}, 1},
		{"dro", {"mycastle:chair"}, 1},
		{"dro", {"mycastle:stand"}, 1},
		{"dro", {"mycastle:small_stand"}, 1},
		{"dro", {"mycastle:candle"}, 1},
		{"dro", {"mycastle:light1"}, 1},
		{"dro", {"mycastle:light2"}, 1},
		{"dro", {"mycastle:light3"}, 1},
		{"dro", {"mycastle:chandelier"}, 1},
		{"dro", {"mycastle:fire_bowl"}, 1},
		{"dro", {"mycastle:pavers"}, 50},
		{"dro", {"mycastle:red_cobble"}, 50},
		{"dro", {"mycastle:black_cobble"}, 50},
		{"dro", {"mycastle:white_cobble"}, 50},
		{"dro", {"mycastle:tan_cobble"}, 50},
		{"dro", {"mycastle:window1"}, 5},
		{"dro", {"mycastle:windod2"}, 5},
		{"dro", {"mycastle:window3"}, 5},
		{"dro", {"mycastle:window4"}, 5},
	})
end
