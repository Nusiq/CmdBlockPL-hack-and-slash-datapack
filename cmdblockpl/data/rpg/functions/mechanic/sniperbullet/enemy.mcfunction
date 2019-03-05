execute at @s positioned ~ ~-0.5 ~ as @e[distance=..0.5,tag=hitdetection,limit=1] run scoreboard players set @s damageTaken 5
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..0.5,tag=hitdetection,limit=1] run function rpg:mechanic/health/damage
execute at @s positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,tag=hitdetection] run kill @s
particle minecraft:crit ~ ~ ~ 0 0 0 0.01 2 force