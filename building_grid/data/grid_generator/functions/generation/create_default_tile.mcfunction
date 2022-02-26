#creates new default tile

#place tile
setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"grid_generator:grid1",rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~1 ~ ~ minecraft:redstone_block

setblock ~32 ~ ~ minecraft:structure_block[mode=load]{name:"grid_generator:grid2",rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~33 ~ ~ minecraft:redstone_block

setblock ~32 ~ ~32 minecraft:structure_block[mode=load]{name:"grid_generator:grid3",rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~33 ~ ~32 minecraft:redstone_block

setblock ~ ~ ~32 minecraft:structure_block[mode=load]{name:"grid_generator:grid4",rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~1 ~ ~32 minecraft:redstone_block

#spread new grid markers
execute positioned ~64 ~ ~ run execute unless entity @e[type=marker,tag=BG_grid,distance=0..1] run summon minecraft:marker ~ ~ ~ {Tags:[BG_grid_new]}
execute positioned ~64 ~ ~64 run execute unless entity @e[type=marker,tag=BG_grid,distance=0..1] run summon minecraft:marker ~ ~ ~ {Tags:[BG_grid_new]}
execute positioned ~ ~ ~64 run execute unless entity @e[type=marker,tag=BG_grid,distance=0..1] run summon minecraft:marker ~ ~ ~ {Tags:[BG_grid_new]}
execute positioned ~-64 ~ ~ run execute unless entity @e[type=marker,tag=BG_grid,distance=0..1] run summon minecraft:marker ~ ~ ~ {Tags:[BG_grid_new]}
execute positioned ~-64 ~ ~-64 run execute unless entity @e[type=marker,tag=BG_grid,distance=0..1] run summon minecraft:marker ~ ~ ~ {Tags:[BG_grid_new]}
execute positioned ~ ~ ~-64 run execute unless entity @e[type=marker,tag=BG_grid,distance=0..1] run summon minecraft:marker ~ ~ ~ {Tags:[BG_grid_new]}

#set new grid markers to version 0 so they generate next
execute as @e[type=marker,tag=BG_grid_new,distance=0..128] at @s run scoreboard players set @s BG_gen_counter 0
execute as @e[type=marker,tag=BG_grid_new,distance=0..128] at @s run tag @s add BG_grid
execute as @e[type=marker,tag=BG_grid_new,distance=0..128] at @s run tag @s remove BG_grid_new

#set this tile marker to be up to the latest version
scoreboard players operation @s BG_gen_counter = 00000002-0002-0001-0009-000000000009 BG_gen_counter