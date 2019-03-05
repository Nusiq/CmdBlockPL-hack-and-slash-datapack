particle minecraft:falling_dust bricks ~ ~0.5 ~ 0.01 0.01 0.01 0 2 force @a
particle minecraft:falling_dust redstone_block ~ ~0.5 ~ 0.01 0.01 0.01 0 1 force @a
execute if entity @e[tag=!SELF_MAGIC_MISSLE,distance=..1,tag=hitdetection] run function rpg:mechanic/magic_missile/explode
teleport @s ^ ^ ^0.15

