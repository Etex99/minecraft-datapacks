function renewables:dragon_egg/new

execute store result score #entities renew.egg_timer positioned ~-8 ~-8 ~-8 if entity @e[type=shulker,dx=17,dy=17,dz=17]
particle poof ~ ~ ~ 0 0 0 0 10

execute unless entity @e[type=shulker,dx=0] unless score #entities renew.egg_timer matches 6.. if predicate renewables:dark run summon shulker ~ ~-0.5 ~