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
	{material = "obsidian"},
	{material = "obsidian_block"},
	{material = "obsidianbrick"},
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
end

--cooking recipes
local cooking = {
	{input="stairs:stair_inner_bronzeblock",   output="default:bronze_ingot 8"},
	{input="stairs:stair_outer_bronzeblock",   output="default:bronze_ingot 6"},
	{input="stairs:stair_inner_copperblock",   output="default:copper_ingot 8"},
	{input="stairs:stair_outer_copperblock",   output="default:copper_ingot 6"},
	{input="stairs:stair_inner_desert_cobble", output="stairs:stair_inner_desert_stone", time=3},
	{input="stairs:stair_outer_desert_cobble", output="stairs:stair_outer_desert_stone", time=2},
	{input="stairs:slab_desert_cobble",        output="stairs:slab_desert_stone", time=2},
	{input="stairs:stair_desert_cobble",       output="stairs:stair_desert_stone", time=3},
	{input="stairs:stair_inner_goldblock",     output="default:gold_ingot 8"},
	{input="stairs:stair_outer_goldblock",     output="default:gold_ingot 6"},
	{input="stairs:stair_inner_steelblock",    output="default:steel_ingot 8"},
	{input="stairs:stair_outer_steelblock",    output="default:steel_ingot 6"},
	{input="stairs:slab_cobble",               output="stairs:slab_stone", time=2},
	{input="stairs:slab_mossycobble",          output="stairs:slab_stone", time=2},
	{input="stairs:stair_inner_cobble",        output="stairs:stair_inner_stone", time=3},
	{input="stairs:stair_inner_mossycobble",   output="stairs:stair_inner_stone", time=3},
	{input="stairs:stair_outer_cobble",        output="stairs:stair_outer_stone", time=2},
	{input="stairs:stair_outer_mossycobble",   output="stairs:stair_outer_stone", time=2},
	{input="stairs:stair_cobble",              output="stairs:stair_stone", time=3},
	{input="stairs:stair_mossycobble",         output="stairs:stair_stone", time=3},
	{input="stairs:stair_inner_tinblock",      output="default:tin_ingot 8"},
	{input="stairs:stair_outer_tinblock",      output="default:tin_ingot 6"},
}

for _,i in pairs(cooking) do
	minetest.register_craft({type = "cooking", output = i.output, recipe = i.input, cooktime = i.time or 4})
end

local wood = {
	{"stairs:stair_outer_acacia_wood 2", "stairs:slab_acacia_wood 2"},
	{"stairs:stair_inner_acacia_wood 2", "stairs:stair_acacia_wood 2"},
	{"stairs:stair_acacia_wood 2",       "stairs:stair_outer_acacia_wood 2"},
	{"stairs:stair_outer_aspen_wood 2",  "stairs:slab_aspen_wood 2"},
	{"stairs:stair_inner_aspen_wood 2",  "stairs:stair_aspen_wood 2"},
	{"stairs:stair_aspen_wood 2",        "stairs:stair_outer_aspen_wood 2"},
	{"stairs:stair_outer_junglewood 2",  "stairs:slab_junglewood 2"},
	{"stairs:stair_inner_junglewood 2",  "stairs:stair_junglewood 2"},
	{"stairs:stair_junglewood 2",        "stairs:stair_outer_junglewood 2"},
	{"stairs:stair_outer_pine_wood 2",   "stairs:slab_pine_wood 2"},
	{"stairs:stair_pine_wood 2",         "stairs:stair_outer_pine_wood 2"},
	{"stairs:stair_inner_pine_wood 2",   "stairs:stair_pine_wood 2"},
	{"stairs:stair_outer_wood 2",        "stairs:slab_wood 2"},
	{"stairs:stair_wood 2",              "stairs:stair_outer_wood 2"},
	{"stairs:stair_inner_wood 2",        "stairs:stair_wood 2"},
}
	
if minetest.get_modpath("elepower_machines") then
	for _, data in pairs(wood) do
		elepm.register_craft({type = "saw", recipe = {data[1]}, output = {data[2], "elepower_dynamics:wood_dust"}, time = 2})
	end
end
