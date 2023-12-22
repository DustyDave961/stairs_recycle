local stairs = {
	{material = "acacia_wood"},
	{material = "aspen_wood"},
	{material = "brick"},
	{material = "cobble"},
	{material = "desert_cobble"},
	{material = "desert_sandstone"},
	{material = "desert_sandstone_block"},
	{material = "desert_sandstone_brick"},
	{material = "desert_stone"},
	{material = "desert_stone_block"},
	{material = "desert_stonebrick"},
	{material = "glass"},
	{material = "ice"},
	{material = "junglewood"},
	{material = "mossycobble"},
	{material = "obsidian_glass"},
	{material = "pine_wood"},
	{material = "sandstone"},
	{material = "sandstone_block"},
	{material = "sandstonebrick"},
	{material = "silver_sandstone"},
	{material = "silver_sandstone_block"},
	{material = "silver_sandstone_brick"},
	{material = "snowblock"},
	{material = "stone"},
	{material = "stone_block"},
	{material = "stonebrick"},
	{material = "straw"},
	{material = "wood"},
}

for _,i in pairs(stairs) do
	minetest.register_craft({type = i.type or "shaped", output = "stairs:stair_" .. i.material, recipe = {
			{"stairs:stair_inner_" .. i.material},
		}
	})
	minetest.register_craft({type = i.type or "shaped", output = "stairs:stair_outer_" .. i.material, recipe = {
			{"stairs:stair_" .. i.material},
		}
	})
	minetest.register_craft({type = i.type or "shaped", output = "stairs:slab_" .. i.material, recipe = {
			{"stairs:stair_outer_" .. i.material},
		}
	})
	minetest.register_craft({type = i.type or "shaped", output = "stairs:slab_" .. i.material .. " 3", recipe = {
			{"stairs:stair_outer_" .. i.material},
			{"stairs:stair_inner_" .. i.material},
		}
	})
	minetest.register_craft({type = i.type or "shaped", output = "stairs:slab_" .. i.material .. " 3", recipe = {
			{"stairs:stair_" .. i.material},
			{"stairs:stair_" .. i.material},
		}
	})
end

--smelting recipes
local smelting_recipes = {
	{output = "default:bronze_ingot 8",          recipe = "stairs:stair_inner_bronzeblock"},
	{output = "default:bronze_ingot 6",          recipe = "stairs:stair_outer_bronzeblock"},
	{output = "default:copper_ingot 8",          recipe = "stairs:stair_inner_copperblock"},
	{output = "default:copper_ingot 6",          recipe = "stairs:stair_outer_copperblock"},
	{output = "stairs:stair_inner_desert_stone", recipe = "stairs:stair_inner_desert_cobble", time = 3},
	{output = "stairs:stair_outer_desert_stone", recipe = "stairs:stair_outer_desert_cobble", time = 2},
	{output = "stairs:slab_desert_stone",        recipe = "stairs:slab_desert_cobble", time = 2},
	{output = "stairs:stair_desert_stone",       recipe = "stairs:stair_desert_cobble", time = 3},
	{output = "default:gold_ingot 8",            recipe = "stairs:stair_inner_goldblock"},
	{output = "default:gold_ingot 6",            recipe = "stairs:stair_outer_goldblock"},
	{output = "default:steel_ingot 8",           recipe = "stairs:stair_inner_steelblock"},
	{output = "default:steel_ingot 6",           recipe = "stairs:stair_outer_steelblock"},
	{output = "stairs:slab_stone",               recipe = "stairs:slab_cobble", time = 2},
	{output = "stairs:slab_stone",               recipe = "stairs:slab_mossycobble", time = 2},
	{output = "stairs:stair_inner_stone",        recipe = "stairs:stair_inner_cobble", time = 3},
	{output = "stairs:stair_inner_stone",        recipe = "stairs:stair_inner_mossycobble", time = 3},
	{output = "stairs:stair_outer_stone",        recipe = "stairs:stair_outer_cobble", time = 2},
	{output = "stairs:stair_outer_stone",        recipe = "stairs:stair_outer_mossycobble", time = 2},
	{output = "stairs:stair_stone",              recipe = "stairs:stair_cobble", time = 3},
	{output = "stairs:stair_stone",              recipe = "stairs:stair_mossycobble", time = 3},
	{output = "default:tin_ingot 8",             recipe = "stairs:stair_inner_tinblock"},
	{output = "default:tin_ingot 6",             recipe = "stairs:stair_outer_tinblock"},
}

for _, data in pairs(smelting_recipes) do
	minetest.register_craft({type = "cooking", output = data.output, recipe = data.recipe, cooktime = data.time or 4})
end

--obsidian recipes
local obsidian_recipes = {
	{material = "obsidian"},
	{material = "obsidian_block"},
	{material = "obsidianbrick"},
}

for _, i in pairs(obsidian_recipes) do
	minetest.register_craft({type = i.type or "shaped", output = "default:obsidian_shard 8", recipe = {
			{"stairs:stair_inner_" .. i.material},
		}
	})
	minetest.register_craft({type = i.type or "shaped", output = "default:obsidian_shard 7", recipe = {
			{"stairs:stair_" .. i.material},
		}
	})
	minetest.register_craft({type = i.type or "shaped", output = "default:obsidian_shard 6", recipe = {
			{"stairs:stair_outer_" .. i.material},
		}
	})
	minetest.register_craft({type = i.type or "shaped", output = "stairs:slab_" .. i.material .. " 3", recipe = {
			{"stairs:stair_outer_" .. i.material},
			{"stairs:stair_inner_" .. i.material},
		}
	})
	minetest.register_craft({type = i.type or "shaped", output = "stairs:slab_" .. i.material .. " 3", recipe = {
			{"stairs:stair_" .. i.material},
			{"stairs:stair_" .. i.material},
		}
	})
end

--machine recipes
local wood = {
	{"stairs:stair_outer_acacia_wood 2", "stairs:slab_acacia_wood 2"},
	{"default:acacia_wood",              "stairs:stair_acacia_wood"},
	{"stairs:stair_inner_acacia_wood 2", "stairs:stair_acacia_wood 2"},
	{"stairs:stair_acacia_wood 2",       "stairs:stair_outer_acacia_wood 2"},
	{"stairs:stair_outer_aspen_wood 2",  "stairs:slab_aspen_wood 2"},
	{"default:aspen_wood",               "stairs:stair_aspen_wood"},
	{"stairs:stair_inner_aspen_wood 2",  "stairs:stair_aspen_wood 2"},
	{"stairs:stair_aspen_wood 2",        "stairs:stair_outer_aspen_wood 2"},
	{"stairs:stair_outer_junglewood 2",  "stairs:slab_junglewood 2"},
	{"default:junglewood",               "stairs:stair_junglewood"},
	{"stairs:stair_inner_junglewood 2",  "stairs:stair_junglewood 2"},
	{"stairs:stair_junglewood 2",        "stairs:stair_outer_junglewood 2"},
	{"stairs:stair_outer_pine_wood 2",   "stairs:slab_pine_wood 2"},
	{"stairs:stair_pine_wood 2",         "stairs:stair_outer_pine_wood 2"},
	{"default:pine_wood",                "stairs:stair_pine_wood"},
	{"stairs:stair_inner_pine_wood 2",   "stairs:stair_pine_wood 2"},
	{"stairs:stair_outer_wood 2",        "stairs:slab_wood 2"},
	{"stairs:stair_wood 2",              "stairs:stair_outer_wood 2"},
	{"default:wood",                     "stairs:stair_wood"},
	{"stairs:stair_inner_wood 2",        "stairs:stair_wood 2"},
}

local alloys = {
	{recipe = {"stairs:slab_obsidian 2", "bucket:bucket_empty"}, output = "bucket:bucket_lava"},
	{recipe = {"stairs:slab_obsidian_block 2", "bucket:bucket_empty"}, output = "bucket:bucket_lava"},
	{recipe = {"stairs:slab_obsidianbrick 2", "bucket:bucket_empty"}, output = "bucket:bucket_lava"},
	{recipe = {"stairs:slab_ice 2", "bucket:bucket_empty"}, "bucket:bucket_water", time = 1},
}
	
if minetest.get_modpath("elepower_machines") then
	for _, i in pairs(alloys) do
		elepm.register_craft({type = "alloy", recipe = i.recipe, output = i.output, time = i.time or 10})
	end
	
	for _, data in pairs(wood) do
		elepm.register_craft({type = "saw", recipe = {data[1]}, output = {data[2], "elepower_dynamics:wood_dust"}, time = 4})
	end
end

if minetest.get_modpath("technic") then
for _, i in pairs(alloys) do
		technic.register_alloy_recipe({input = i.recipe, output = i.output, time = i.time or 10})
	end
end
