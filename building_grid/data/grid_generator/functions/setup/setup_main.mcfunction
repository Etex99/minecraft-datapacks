#setup called by player

gamerule sendCommandFeedback false

scoreboard objectives add BG_settings dummy
scoreboard objectives add BG_gen_counter dummy
scoreboard players set gen_mode BG_settings 0
scoreboard players set generating BG_settings 1

forceload add 0 0 

tp @s 0 ~2 0

execute unless entity @e[type=area_effect_cloud,tag=BG_grid_start] run function grid_generator:setup/spawn_main_aec

execute as @a at @s run tellraw @s {"text":">","color":"yellow"}
execute as @a at @s run tellraw @s {"text":"You are using grid generator by Etex","color":"yellow"} 
execute as @a at @s run tellraw @s {"text":"Begin by generating default tiles or by designing your own custom pattern on top of the white glass sheet","color":"yellow"} 
execute as @a at @s run tellraw @s {"text":">","color":"yellow"} 

function grid_generator:options/print_ui