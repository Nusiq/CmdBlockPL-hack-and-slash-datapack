scoreboard players add @s soundwave_rot 1
#execute rotated as @s run particle minecraft:dust 1 0 0 1 ^ ^ ^1 0 0 0 0 1
execute rotated as @s run particle minecraft:crit ^ ^ ^1
execute at @s run tp @s ~ ~ ~ ~20 ~
execute if entity @s[scores={soundwave_rot=..6}] run function rpg:mechanic/soundwave/render_rays