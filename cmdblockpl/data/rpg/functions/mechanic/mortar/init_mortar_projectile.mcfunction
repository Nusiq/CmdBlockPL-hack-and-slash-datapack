tag @s remove MORTAR_PROJECTILE_INIT
teleport @s ~ ~ ~ facing entity @e[tag=CURSOR,limit=1] feet
execute at @s rotated as @s run function rpg:mechanic/mortar/loop
scoreboard players operation @s parabolaCounter /= 2 var