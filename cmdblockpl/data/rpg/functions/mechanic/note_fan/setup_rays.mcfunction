scoreboard players add @s note_fan_rot 1
execute rotated as @s run summon area_effect_cloud ^ ^ ^ {Duration:5,Tags:["note_fan_ray","unprocessed_fan_ray"]}
execute at @s run tp @s ~ ~ ~ ~15 ~
execute store result entity @e[tag=unprocessed_fan_ray,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
tag @e[tag=unprocessed_fan_ray] remove unprocessed_fan_ray
execute if entity @s[scores={note_fan_rot=..4}] run function rpg:mechanic/note_fan/setup_rays