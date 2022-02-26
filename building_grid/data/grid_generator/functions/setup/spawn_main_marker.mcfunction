# Creates the main aec

summon minecraft:marker 0 -64 0 {Tags:[BG_grid_start],UUID:[I;2,131073,589824,9]}
execute as @e[type=marker,tag=BG_grid_start] at @s run function grid_generator:setup/find_surface
execute as @e[type=marker,tag=BG_grid_start] at @s run function grid_generator:generation/create_default_tile
execute as @e[type=marker,tag=BG_grid_start] at @s run fill ~ ~2 ~ ~63 ~2 ~63 minecraft:white_stained_glass
scoreboard players add @e[type=marker,tag=BG_grid_start] BG_gen_counter 1