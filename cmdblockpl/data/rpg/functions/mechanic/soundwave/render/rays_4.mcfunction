scoreboard players add @s soundwave_rot 1
execute rotated as @s run particle minecraft:note ^ ^ ^1 0.20 1 1 1 0
execute at @s run tp @s ~ ~ ~ ~20 ~
execute if entity @s[scores={soundwave_rot=..6}] run function rpg:mechanic/soundwave/render/rays_4
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 0.2