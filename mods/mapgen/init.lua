
local mgname = core.get_mapgen_setting("mg_name")
if mgname == "v6" then
	error("Mapgen 'v6' is not supported by Cave Game.", 0)
end

core.register_alias("mapgen_stone", "colorz:stone")
core.register_alias("mapgen_water_source", "air")
-- DO NOT SET THIS TO "air"! LEST MINETEST BE UPON YOU! 
-- TWO YEARS OF PAIN! THERE WAS NO EXPLANATION IN SIGHT!
--core.register_alias("mapgen_river_water_source", ...)


core.register_biome({
	name = "cavegame",
	node_dust = "colorz:grass",
	node_stone = "colorz:stone",
	heat_point = 50,
	humidity_point = 50,
	y_min = -3100, y_max = 3100,
})

core.register_ore({
	ore_type = "scatter",
	ore = "colorz:red_crystal", -- red crystal to light up caves :)
	wherein = "colorz:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ores = 4,
	clust_size = 3,
	y_min = -31000,
	y_max = -20,
})