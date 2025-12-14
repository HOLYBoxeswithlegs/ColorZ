
local hud_flags = {
	hotbar = true,
	crosshair = true,
	healthbar = false,
	breathbar = false,
	basic_debug = true,
}

local inv_list = {}
local inv_size = 0

core.register_on_mods_loaded(function()
	local unordered_names = {}
	local unordered_defs = {}
	for name,def in pairs(core.registered_nodes) do
		if def.order then
			inv_size = math.max(inv_size, def.order)
			inv_list[def.order] = name
			
			core.override_item(name, {
			--	drop = "",
			--	stack_max = 1,
				range = 16,
			})
		else
			unordered_names[#unordered_names+1] = name
			unordered_defs[name] = def
		end
	end
	table.sort(unordered_names)
	for i = 1, #unordered_names do
		local name = unordered_names[i]
		local def = unordered_defs[name]
		if not def.groups.not_in_creative_inventory then
			inv_size = inv_size + 1
			inv_list[inv_size] = name
		end
	end
end)

core.register_on_joinplayer(function(player, last_login)
	player:set_clouds({ density=0 })
	player:set_lighting({ shadows=0 })

    -- am pro
	player:set_inventory_formspec(
        "formspec_version[4]" ..
        "size[10,9]" ..
        "position[0.5,0.5]" ..
        "label[0.375,0.5;Inventory]" .. -- incase you were deaf
        "list[current_player;main;0,3.5;8,4;]" ..
        "list[current_player;craft;3,0;3,3;]" ..
        "listring[]" ..
        "list[current_player;craftpreview;7,1;1,1;]"
    )
--	player:set_formspec_prepend("") --TODO?
	
	player:hud_set_flags(hud_flags)
	player:hud_set_hotbar_itemcount(inv_size)
	
	local name = player:get_player_name()
	local inv = core.get_inventory({ type="player", name=name })
	inv:set_size("main", inv_size)
	inv:set_list("main", inv_list)
	
	player:set_properties({
		collisionbox = {-0.3, 0, -0.3, 0.3, 1.8, 0.3},
		-- TODO
	})
end)



 -- hand --

local cap = {
	times = { [1]=0.6, [2]=0.3, [3]=0.0, },
	uses = 0,
}

local groups = { "dig_immediate", "oddly_breakable_by_hand", "crumbly", "snappy", "cracky", }
local groupcaps = {}
for _,group in ipairs(groups) do
	groupcaps[group] = cap
end

core.register_item(":", {
	type = "none",
    wield_image = "",
    inventory_image = "",
    wield_scale = { x=0, y=0, z=0 },
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level = 0,
		damage_groups = { fleshy = 1 },
		groupcaps = groupcaps,
	},
})



 -- in-world items --

--local old_item_drop = core.item_drop
core.item_drop = function(itemstack, ...)
	return itemstack
end

local old_item_place = core.item_place
core.item_place = function(...)
	old_item_place(...)
	return nil
end

--local old_handle_node_drops = core.handle_node_drops
core.handle_node_drops = function(...)
	-- Ignore all drops
end
