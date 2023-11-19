minetest.register_craft({
   output = "stairs:slab_brick 3",
   recipe = {
      {"stairs:stair_outer_brick", "stairs:stair_outer_brick", "stairs:stair_outer_brick"}
   }
})

minetest.register_craft({
   output = "stairs:slab_glass 3",
   recipe = {
      {"stairs:stair_outer_glass", "stairs:stair_outer_glass", "stairs:stair_outer_glass"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_glass",
   recipe = {"stairs:stair_inner_glass"},
})

minetest.register_craft({
   output = "stairs:slab_ice 3",
   recipe = {
      {"stairs:stair_outer_ice", "stairs:stair_outer_ice", "stairs:stair_outer_ice"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_ice",
   recipe = {"stairs:stair_inner_ice"},
})

minetest.register_craft({
   output = "stairs:slab_straw 3",
   recipe = {
      {"stairs:stair_outer_straw", "stairs:stair_outer_straw", "stairs:stair_outer_straw"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_straw",
   recipe = {"stairs:stair_inner_straw"},
})

minetest.register_craft({
   output = "stairs:slab_snowblock 3",
   recipe = {
      {"stairs:stair_outer_snowblock", "stairs:stair_outer_snowblock", "stairs:stair_outer_snowblock"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_snowblock",
   recipe = {"stairs:stair_inner_snowblock"},
})

--Stone
minetest.register_craft({
   output = "stairs:slab_cobble 3",
   recipe = {
      {"stairs:stair_outer_cobble", "stairs:stair_outer_cobble", "stairs:stair_outer_cobble"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_cobble",
   recipe = {"stairs:stair_inner_cobble"},
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:stair_inner_stone",
   recipe = "stairs:stair_inner_cobble",
   cooktime = 3
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:slab_stone",
   recipe = "stairs:slab_cobble",
   cooktime = 2
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:stair_stone",
   recipe = "stairs:stair_cobble",
   cooktime = 2
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:stair_outer_stone",
   recipe = "stairs:stair_outer_cobble",
   cooktime = 2
})

minetest.register_craft({
   output = "stairs:slab_stone 3",
   recipe = {
      {"stairs:stair_outer_stone", "stairs:stair_outer_stone", "stairs:stair_outer_stone"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_stone",
   recipe = {"stairs:stair_inner_stone"},
})

minetest.register_craft({
   output = "stairs:slab_mossycobble 3",
   recipe = {
      {"stairs:stair_outer_mossycobble", "stairs:stair_outer_mossycobble", "stairs:stair_outer_mossycobble"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_mossycobble",
   recipe = {"stairs:stair_inner_mossycobble"},
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:stair_inner_stone",
   recipe = "stairs:stair_inner_mossycobble",
   cooktime = 3
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:slab_stone",
   recipe = "stairs:slab_mossycobble",
   cooktime = 2
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:stair_stone",
   recipe = "stairs:stair_mossycobble",
   cooktime = 2
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:stair_outer_stone",
   recipe = "stairs:stair_outer_mossycobble",
   cooktime = 2
})

minetest.register_craft({
   output = "stairs:slab_stone_block 3",
   recipe = {
      {"stairs:stair_outer_stone_block", "stairs:stair_outer_stone_block", "stairs:stair_outer_stone_block"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_stone_block",
   recipe = {"stairs:stair_inner_stone_block"},
})

minetest.register_craft({
   output = "stairs:slab_stonebrick 3",
   recipe = {
      {"stairs:stair_outer_stonebrick", "stairs:stair_outer_stonebrick", "stairs:stair_outer_stonebrick"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_stonebrick",
   recipe = {"stairs:stair_inner_stonebrick"},
})

minetest.register_craft({
   output = "stairs:slab_desert_cobble 3",
   recipe = {
      {"stairs:stair_outer_desert_cobble", "stairs:stair_outer_desert_cobble", "stairs:stair_outer_desert_cobble"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_desert_cobble",
   recipe = {"stairs:stair_inner_desert_cobble"},
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:stair_inner_desert_stone",
   recipe = "stairs:stair_inner_desert_cobble",
   cooktime = 3
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:slab_desert_stone",
   recipe = "stairs:slab_desert_cobble",
   cooktime = 2
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:stair_desert_stone",
   recipe = "stairs:stair_desert_cobble",
   cooktime = 2
})

minetest.register_craft({
   type = "cooking",
   output = "stairs:stair_outer_desert_stone",
   recipe = "stairs:stair_outer_desert_cobble",
   cooktime = 2
})

minetest.register_craft({
   output = "stairs:slab_desert_stone 3",
   recipe = {
      {"stairs:stair_outer_desert_stone", "stairs:stair_outer_desert_stone", "stairs:stair_outer_desert_stone"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_desert_stone",
   recipe = {"stairs:stair_inner_desert_stone"},
})

minetest.register_craft({
   output = "stairs:slab_desert_stone_block 3",
   recipe = {
      {"stairs:stair_outer_desert_stone_block", "stairs:stair_outer_desert_stone_block", "stairs:stair_outer_desert_stone_block"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_desert_stone_block",
   recipe = {"stairs:stair_inner_desert_stone_block"},
})

minetest.register_craft({
   output = "stairs:slab_desert_stonebrick 3",
   recipe = {
      {"stairs:stair_outer_desert_stonebrick", "stairs:stair_outer_desert_stonebrick", "stairs:stair_outer_desert_stonebrick"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_desert_stonebrick",
   recipe = {"stairs:stair_inner_desert_stonebrick"},
})

--Sandstone
minetest.register_craft({
   output = "stairs:slab_sandstone 3",
   recipe = {
      {"stairs:stair_outer_sandstone", "stairs:stair_outer_sandstone", "stairs:stair_outer_sandstone"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_sandstone",
   recipe = {"stairs:stair_inner_sandstone"},
})

minetest.register_craft({
   output = "stairs:slab_sandstone_block 3",
   recipe = {
      {"stairs:stair_outer_sandstone_block", "stairs:stair_outer_sandstone_block", "stairs:stair_outer_sandstone_block"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_sandstone_block",
   recipe = {"stairs:stair_inner_sandstone_block"},
})

minetest.register_craft({
   output = "stairs:slab_sandstonebrick 3",
   recipe = {
      {"stairs:stair_outer_sandstonebrick", "stairs:stair_outer_sandstonebrick", "stairs:stair_outer_sandstonebrick"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_sandstonebrick",
   recipe = {"stairs:stair_inner_sandstonebrick"},
})

minetest.register_craft({
   output = "stairs:slab_desert_sandstone 3",
   recipe = {
      {"stairs:stair_outer_desert_sandstone", "stairs:stair_outer_desert_sandstone", "stairs:stair_outer_desert_sandstone"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_desert_sandstone",
   recipe = {"stairs:stair_inner_desert_sandstone"},
})

minetest.register_craft({
   output = "stairs:slab_desert_sandstone_block 3",
   recipe = {
      {"stairs:stair_outer_desert_sandstone_block", "stairs:stair_outer_desert_sandstone_block", "stairs:stair_outer_desert_sandstone_block"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_desert_sandstone_block",
   recipe = {"stairs:stair_inner_desert_sandstone_block"},
})

minetest.register_craft({
   output = "stairs:slab_desert_sandstone_brick 3",
   recipe = {
      {"stairs:stair_outer_desert_sandstone_brick", "stairs:stair_outer_desert_sandstone_brick", "stairs:stair_outer_desert_sandstone_brick"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_desert_sandstone_brick",
   recipe = {"stairs:stair_inner_desert_sandstone_brick"},
})

minetest.register_craft({
   output = "stairs:slab_silver_sandstone 3",
   recipe = {
      {"stairs:stair_outer_silver_sandstone", "stairs:stair_outer_silver_sandstone", "stairs:stair_outer_silver_sandstone"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_silver_sandstone",
   recipe = {"stairs:stair_inner_silver_sandstone"},
})

minetest.register_craft({
   output = "stairs:slab_silver_sandstone_block 3",
   recipe = {
      {"stairs:stair_outer_silver_sandstone_block", "stairs:stair_outer_silver_sandstone_block", "stairs:stair_outer_silver_sandstone_block"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_silver_sandstone_block",
   recipe = {"stairs:stair_inner_silver_sandstone_block"},
})

minetest.register_craft({
   output = "stairs:slab_silver_sandstone_brick 3",
   recipe = {
      {"stairs:stair_outer_silver_sandstone_brick", "stairs:stair_outer_silver_sandstone_brick", "stairs:stair_outer_silver_sandstone_brick"}
   }
})

minetest.register_craft({
   type = "shapeless",
   output = "stairs:stair_silver_sandstone_brick",
   recipe = {"stairs:stair_inner_silver_sandstone_brick"},
})

--Ore
minetest.register_craft({
   type = "cooking",
   output = "default:bronze_ingot 7",
   recipe = "stairs:stair_inner_bronzeblock",
   cooktime = 4
})

minetest.register_craft({
   type = "cooking",
   output = "default:bronze_ingot 5",
   recipe = "stairs:stair_outer_bronzeblock",
   cooktime = 4
})

minetest.register_craft({
   type = "cooking",
   output = "default:copper_ingot 7",
   recipe = "stairs:stair_inner_copperblock",
   cooktime = 4
})

minetest.register_craft({
   type = "cooking",
   output = "default:copper_ingot 5",
   recipe = "stairs:stair_outer_copperblock",
   cooktime = 4
})

minetest.register_craft({
   type = "cooking",
   output = "default:gold_ingot 7",
   recipe = "stairs:stair_inner_goldblock",
   cooktime = 4
})

minetest.register_craft({
   type = "cooking",
   output = "default:gold_ingot 5",
   recipe = "stairs:stair_outer_goldblock",
   cooktime = 4
})

minetest.register_craft({
   type = "cooking",
   output = "default:steel_ingot 7",
   recipe = "stairs:stair_inner_steelblock",
   cooktime = 4
})

minetest.register_craft({
   type = "cooking",
   output = "default:steel_ingot 5",
   recipe = "stairs:stair_outer_steelblock",
   cooktime = 4
})

--Register crafting recipes
local shapeless = {
	{"stairs:stair_outer_acacia_wood",    "stairs:slab_acacia_wood"},
	{"stairs:stair_inner_acacia_wood",    "stairs:stair_acacia_wood"},
	{"stairs:stair_outer_aspen_wood",     "stairs:slab_aspen_wood"},
	{"stairs:stair_inner_aspen_wood",     "stairs:stair_aspen_wood"},
	{"stairs:stair_inner_brick",          "stairs:stair_brick"},
	{"stairs:stair_outer_junglewood",     "stairs:slab_junglewood"},
	{"stairs:stair_inner_junglewood",     "stairs:stair_junglewood"},
	{"stairs:stair_outer_obsidian",       "stairs:slab_obsidian"},
	{"stairs:stair_inner_obsidian",       "stairs:stair_obsidian"},
	{"stairs:stair_outer_obsidian_block", "stairs:slab_obsidian_block"},
	{"stairs:stair_inner_obsidian_block", "stairs:stair_obsidian_block"},
	{"stairs:stair_outer_obsidianbrick",  "stairs:slab_obsidianbrick"},
	{"stairs:stair_inner_obsidianbrick",  "stairs:stair_obsidianbrick"},
	{"stairs:stair_outer_obsidian_glass", "stairs:slab_obsidian_glass"},
	{"stairs:stair_inner_obsidian_glass", "stairs:stair_obsidian_glass"},
	{"stairs:stair_outer_pine_wood",      "stairs:slab_pine_wood"},
	{"stairs:stair_inner_pine_wood",      "stairs:stair_pine_wood"},
	{"stairs:stair_outer_wood",           "stairs:slab_wood"},
	{"stairs:stair_inner_wood",           "stairs:stair_wood"},
}

for _, data in pairs(shapeless) do
	minetest.register_craft({
		type   = "shapeless",
		recipe = {data[1]},
		output = data[2],
	})
end

--Register smelting recipes
local cooking = {
	{"stairs:stair_inner_tinblock", "default:tin_ingot 8"},
	{"stairs:stair_outer_tinblock", "default:tin_ingot 6"},
}

for _, data in pairs(cooking) do
	minetest.register_craft({
		type     = "cooking",
		recipe   = {data[1]},
		output   = data[2],
		cooktime = data[3] or 4,
	})
end
