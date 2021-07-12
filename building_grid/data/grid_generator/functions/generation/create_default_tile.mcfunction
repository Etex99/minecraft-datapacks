#creates new default tile

setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"grid_generator:grid1",posY:1,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~-2 ~ minecraft:redstone_block
fill ~ ~-1 ~ ~ ~-2 ~ minecraft:coal_block

setblock ~32 ~-1 ~ minecraft:structure_block[mode=load]{name:"grid_generator:grid2",posY:1,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~32 ~-2 ~ minecraft:redstone_block
fill ~32 ~-1 ~ ~32 ~-2 ~ minecraft:coal_block

setblock ~32 ~-1 ~32 minecraft:structure_block[mode=load]{name:"grid_generator:grid3",posY:1,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~32 ~-2 ~32 minecraft:redstone_block
fill ~32 ~-1 ~32 ~32 ~-2 ~32 minecraft:coal_block

setblock ~ ~-1 ~32 minecraft:structure_block[mode=load]{name:"grid_generator:grid4",posY:1,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~-2 ~32 minecraft:redstone_block
fill ~ ~-1 ~32 ~ ~-2 ~32 minecraft:coal_block

execute positioned ~64 ~ ~ run execute unless entity @e[type=area_effect_cloud,tag=BG_grid,distance=0..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[BG_grid]}

execute positioned ~64 ~ ~64 run execute unless entity @e[type=area_effect_cloud,tag=BG_grid,distance=0..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[BG_grid]}

execute positioned ~ ~ ~64 run execute unless entity @e[type=area_effect_cloud,tag=BG_grid,distance=0..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[BG_grid]}

execute positioned ~-64 ~ ~ run execute unless entity @e[type=area_effect_cloud,tag=BG_grid,distance=0..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[BG_grid]}

execute positioned ~-64 ~ ~-64 run execute unless entity @e[type=area_effect_cloud,tag=BG_grid,distance=0..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[BG_grid]}

execute positioned ~ ~ ~-64 run execute unless entity @e[type=area_effect_cloud,tag=BG_grid,distance=0..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[BG_grid]}

execute as @e[type=area_effect_cloud,nbt={Age:0},tag=BG_grid,distance=0..128] at @s run scoreboard players set @s BG_gen_counter 0

scoreboard players operation @s BG_gen_counter = 00000002-0002-0001-0009-000000000009 BG_gen_counter