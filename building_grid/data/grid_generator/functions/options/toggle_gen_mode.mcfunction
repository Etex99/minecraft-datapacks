#toggles between custom and default tile generation

execute if score gen_mode BG_settings matches 0 run scoreboard players set gen_mode BG_settings 3
execute if score gen_mode BG_settings matches 1 run scoreboard players set gen_mode BG_settings 0
execute if score gen_mode BG_settings matches 3 run scoreboard players set gen_mode BG_settings 1

execute if score gen_mode BG_settings matches 0 run tellraw @s {"text":"> Generation mode set to DEFAULT","color":"yellow"}
execute if score gen_mode BG_settings matches 1 run tellraw @s {"text":"> Generation mode set to CUSTOM","color":"yellow"}

execute as @e[type=area_effect_cloud,tag=BG_grid_start] at @s run function grid_generator:options/save_custom_tile
function grid_generator:generation/regenerate_tiles