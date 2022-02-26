#UI

tellraw @s {"text":">","color":"yellow"}

#INFO
tellraw @s [{"text":"Click text in square brackets","color":"yellow"},{"text":" [EVENT]","color":"green","italic":true},{"text":" to execute commands","color":"yellow"}]

tellraw @s {"text":"Place the loyal potato in second hand slot to print this UI again","color":"yellow"}

tellraw @s {"text":">","color":"yellow"}

#COMMANDS
tellraw @s {"text":"[UPDATE CUSTOM TILE]","color":"green","hoverEvent":{"action":"show_text","value":"Updates tile pattern for custom generation mode"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=BG_grid_start] at @s run function grid_generator:options/save_custom_tile"}}

tellraw @s {"text":"[TOGGLE GENERATION MODE]","color":"green","hoverEvent":{"action":"show_text","value":"Swap between default and custom tile generation"},"clickEvent":{"action":"run_command","value":"/function grid_generator:options/toggle_gen_mode"}}

tellraw @s {"text":"[TELEPORT TO CUSTOM TILE CANVAS]","color":"green","hoverEvent":{"action":"show_text","value":"In case you get lost"},"clickEvent":{"action":"run_command","value":"/function grid_generator:options/refresh_tile_canvas"}}

tellraw @s {"text":">","color":"yellow"}