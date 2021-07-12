scoreboard players remove @s renew.egg_timer 1

execute if block ~ ~ ~ dragon_egg align xyz positioned ~.5 ~.5 ~.5 run function renewables:dragon_egg/summon
execute unless block ~ ~ ~ dragon_egg unless score @s renew.egg_timer matches ..0 positioned ^ ^ ^.1 run function renewables:dragon_egg/find