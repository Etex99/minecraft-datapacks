# prompt user whether they want to proceed or not with setup

tellraw @s {"text":">","color":"red"}
tellraw @s {"text":"WARNING","color":"red"} 
tellraw @s {"text":"Starting the building grid is a destructive operation which cannot be undone.","color":"red"} 
tellraw @s {"text":"Any existing builds may obstruct the building grid and get overwritten.","color":"red"} 
tellraw @s {"text":"Starting out on an empty flatworld is greatly recommended to avoid any issues.","color":"red"} 
tellraw @s {"text":"You will also be teleported to a different location in the world.","color":"red"} 
tellraw @s {"text":"If you wish to continue, click the text in green below.","color":"red"} 
tellraw @s {"text":">","color":"red"}
tellraw @s {"text":"[CONTINUE]","color":"green","hoverEvent":{"action":"show_text","value":"Continue"},"clickEvent":{"action":"run_command","value":"/function grid_generator:setup/setup_main"}}