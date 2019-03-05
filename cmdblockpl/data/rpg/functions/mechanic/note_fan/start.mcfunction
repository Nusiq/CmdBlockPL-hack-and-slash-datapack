summon area_effect_cloud ~ ~ ~ {Tags:["note_fan_marker","unprocessed_note_fan"]}
scoreboard players set @e[tag=note_fan_marker,tag=unprocessed_note_fan] note_fan_rot 0
tp @e[tag=note_fan_marker,tag=unprocessed_note_fan] @s
tp @e[tag=note_fan_marker,tag=unprocessed_note_fan] ~ ~ ~ ~-45 ~
execute as @e[tag=unprocessed_note_fan] at @s rotated as @s run function rpg:mechanic/note_fan/setup_rays
tag @e[tag=unprocessed_note_fan] remove unprocessed_note_fan