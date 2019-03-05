#Obliczam predkosc poczatkowa (w gore)
scoreboard players remove @s parabolaCounter 1
scoreboard players operation @s parabolaGravity = @s parabolaCounter
scoreboard players operation @s parabolaGravity *= 1G parabolaGravity

execute store result score @s parabolaPosTMP run data get entity @s Pos[1] 1000
scoreboard players operation @s parabolaPosTMP += @s parabolaGravity
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s parabolaPosTMP

teleport @e[tag=mortar_projectile] @s

execute at @s run teleport @s ^ ^ ^0.3
execute at @s run particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 0 5 force @a
execute at @s unless block ~ ~ ~ #rpg:transparent run function rpg:mechanic/mortar/explode