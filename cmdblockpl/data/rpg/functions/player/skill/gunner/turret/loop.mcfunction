scoreboard players add @s turret_loop 1
execute facing entity @e[tag=turret_loop] feet positioned ^ ^ ^0.1 unless block ~ ~ ~ #util:solid run tag @s add turret_obstructed
execute if entity @s[scores={turret_loop=..100}] unless entity @e[tag=turret_loop,distance=1] run function rpg:player/skill/gunner/turret/loop
scoreboard players set @s turret_loop 0