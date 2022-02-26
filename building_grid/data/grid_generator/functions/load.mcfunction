#things to do upon load/reload

scoreboard objectives add BG_settings dummy
execute unless score ran_setup BG_settings matches 1 as @p run function grid_generator:setup
execute as @e[type=area_effect_cloud,tag=BG_grid_start] at @s run function grid_generator:options/save_custom_tile