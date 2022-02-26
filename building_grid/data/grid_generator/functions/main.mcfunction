#MAIN LOOP

execute if score gen_mode BG_settings matches 0 run execute at @a run execute as @e[type=minecraft:marker,tag=BG_grid,distance=0..128] at @s run execute if score @s BG_gen_counter < 00000002-0002-0001-0009-000000000009 BG_gen_counter run function grid_generator:generation/create_default_tile

execute if score gen_mode BG_settings matches 1 run execute at @a run execute as @e[type=minecraft:marker,tag=BG_grid,distance=0..128] at @s run execute if score @s BG_gen_counter < 00000002-0002-0001-0009-000000000009 BG_gen_counter run function grid_generator:generation/create_custom_tile

#USE UI ITEM WHEN IN OFFHAND

execute as @a at @s run execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:poisonous_potato"}]} run function grid_generator:options/ui_request

#GIVE UI ITEM IF MISSING

execute as @a at @s run execute unless data entity @s {Inventory:[{id:"minecraft:poisonous_potato"}]} run give @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"Loyal Potato\",\"color\":\"yellow\"}",Lore:["{\"text\":\"This loyal companion\"}","{\"text\":\"will print ui for\"}","{\"text\":\"Building Grid datapack\"}","{\"text\":\"when placed in\"}","{\"text\":\"second hand slot\",\"bold\":true}"]},Enchantments:[{id:"minecraft:loyalty",lvl:9000s}]} 1