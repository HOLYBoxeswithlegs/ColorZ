
core.register_on_mods_loaded(function()
	for name,def in pairs(core.registered_nodes) do
		if def.order then
			core.register_alias(tostring(def.order), name)
		end
	end
end)



 -- nodes --

core.register_node(":colorz:stone", {
	order = 1,
	description = "Stone",
	tiles = { "stone.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:grass", {
	order = 2,
	description = "Grass",
	tiles = { "grass.png" },
	groups = { crumbly=2, snappy=3, },
	is_ground_content = true,
})

core.register_node(":colorz:glass", {
    order = 3,
    description = "Glass",
    drawtype = "glasslike",
    tiles = { "glass.png" },
    groups = { crumbly=1, cracky=3 },
    paramtype = "light",
    use_texture_alpha = true,
    is_ground_content = true,
    sunlight_propagates = true,
})

core.register_node(":colorz:light", {
	order = 4,
	description = "Light",
	tiles = { "light.png" },
	groups = { crumbly=1, cracky=3, },
	paramtype = "light",
	light_source = 15,
	is_ground_content = true,
})

-- solid color blocks --

core.register_node(":colorz:black", {
	order = 5,
	description = "Black",
	tiles = { "black.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:white", {
	order = 6,
	description = "White",
	tiles = { "white.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:red", {
	order = 7,
	description = "Red",
	tiles = { "red.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:green", {
	order = 8,
	description = "Green",
	tiles = { "green.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:blue", {
	order = 9,
	description = "Blue",
	tiles = { "blue.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:yellow", {
	order = 10,
	description = "Yellow",
	tiles = { "yellow.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:purple", {
	order = 11,
	description = "Purple",
	tiles = { "purple.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:orange", {
	order = 12,
	description = "Orange",
	tiles = { "orange.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:brown", {
	order = 13,
	description = "Brown",
	tiles = { "brown.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:pink", {
	order = 14,
	description = "Pink",
	tiles = { "pink.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:blue_crystal", {
    order = 15,
    description = "Blue Crystal",
    drawtype = "glasslike",
    tiles = { "blue_crystal.png" },
    groups = { crumbly=1, cracky=3 },
    paramtype = "light",
    light_source = 6,
    use_texture_alpha = true,
    is_ground_content = true,
    sunlight_propagates = true,
})

core.register_node(":colorz:red_crystal", {
    order = 16,
    description = "Red Crystal",
    drawtype = "glasslike",
    tiles = { "red_crystal.png" },
    groups = { crumbly=1, cracky=3 },
    paramtype = "light",
    light_source = 10,
    use_texture_alpha = true,
    is_ground_content = true,
    sunlight_propagates = true,
})

core.register_node(":colorz:color_block", {
    order = 17,
	description = "Color Block",
	tiles = { "color_block.png" },
	groups = { crumbly=1, cracky=3, },
	is_ground_content = true,
})

core.register_node(":colorz:terminal", {
    description = "Terminal",
    tiles = {
        "terminal_top.png", "terminal_top.png", 
        "terminal_side.png", "terminal_side.png", 
        "terminal_side.png", "terminal_side.png"
    },
    groups = { crumbly=1, cracky=3 },
})
