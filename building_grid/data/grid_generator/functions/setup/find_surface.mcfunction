#finds the highest block of the flatworld
execute unless block ~ ~1 ~ minecraft:air at @s run tp @s ~ ~1 ~
execute unless block ~ ~1 ~ minecraft:air at @s run function grid_generator:setup/find_surface