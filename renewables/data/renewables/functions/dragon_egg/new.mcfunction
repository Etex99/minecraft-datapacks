summon marker ~ ~ ~ {Tags:["getUUID"]}
execute store result score #random renew.egg_timer run data get entity @e[type=marker,tag=getUUID,limit=1] UUID[0]
kill @e[type=marker,tag=getUUID]

scoreboard players operation #random renew.egg_timer %= #mod renew.egg_timer
scoreboard players operation #random renew.egg_timer += #min renew.egg_timer

scoreboard players operation @s renew.egg_timer = #random renew.egg_timer