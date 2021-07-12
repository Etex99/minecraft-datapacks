#SERVES UI PRINT REQUESTS

function grid_generator:options/print_ui
item replace entity @s weapon.offhand with minecraft:air

give @s minecraft:poisonous_potato{display:{Name:"{\"text\":\"Loyal Potato\",\"color\":\"yellow\"}",Lore:["{\"text\":\"This loyal companion\"}","{\"text\":\"will print ui for\"}","{\"text\":\"Building Grid datapack\"}","{\"text\":\"when placed in\"}","{\"text\":\"second hand slot\",\"bold\":true}"]},Enchantments:[{id:"minecraft:loyalty",lvl:9000s}]} 1