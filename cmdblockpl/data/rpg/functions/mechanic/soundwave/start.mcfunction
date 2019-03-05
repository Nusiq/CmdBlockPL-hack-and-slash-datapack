summon area_effect_cloud ~ ~ ~ {Tags:["soundwave_marker","unprocessed_soundwave"],Duration:100}
tp @e[tag=soundwave_marker,tag=unprocessed_soundwave] @s
tp @e[tag=soundwave_marker,tag=unprocessed_soundwave] ~ ~ ~ ~-60 ~
scoreboard players set @e[tag=soundwave_marker,tag=unprocessed_soundwave] soundwave_rot 0
scoreboard players set @e[tag=soundwave_marker,tag=unprocessed_soundwave] soundwave_color 0
execute as @e[tag=unprocessed_soundwave] at @s rotated as @s run function rpg:mechanic/soundwave/render_rays
tp @e[tag=soundwave_marker,tag=unprocessed_soundwave] ~ ~ ~ ~ ~
execute as @e[tag=soundwave_marker,tag=unprocessed_soundwave] run function util:get_rot/run
tag @e[tag=unprocessed_soundwave] remove unprocessed_soundwave