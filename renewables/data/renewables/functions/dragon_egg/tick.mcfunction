scoreboard players remove @s renew.egg_timer 1
execute as @s[scores={renew.egg_timer=..0}] run function renewables:dragon_egg/spawn

execute if predicate renewables:dark run particle flame ~ ~ ~ 0.3 0.3 0.3 0 1

execute unless block ~ ~ ~ dragon_egg run kill @s