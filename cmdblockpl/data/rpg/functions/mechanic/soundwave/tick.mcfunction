#execute rotated as @s run particle minecraft:dust 0 0 1 1 ^ ^ ^2 0 0 0 0 1

execute if score @s rotX matches 0..90000000 run function rpg:mechanic/soundwave/check_sw
execute if score @s rotX matches 90000000..180000000 run function rpg:mechanic/soundwave/check_nw
execute if score @s rotX matches 180000000..270000000 run function rpg:mechanic/soundwave/check_ne
execute if score @s rotX matches 270000000..360000000 run function rpg:mechanic/soundwave/check_se

execute if entity @s[tag=bounced] store result entity @s Rotation[0] float 0.000001 run scoreboard players get @s rotX
execute if entity @s[tag=bounced] run function util:get_rot/run
#execute if entity @s[tag=bounced] rotated as @s run tp @s ^ ^ ^0.2
tag @s remove bounced


execute at @s run tp @s ~ ~ ~ ~-60 ~
scoreboard players set @s soundwave_rot 0
#execute at @s run function rpg:mechanic/soundwave/render_rays
execute at @s run function rpg:mechanic/soundwave/render/pick
execute at @s run tp @s ~ ~ ~ ~-80 ~

execute at @s run tp @s ^ ^ ^0.2

#tick color change
scoreboard players add @s soundwave_color 1
scoreboard players set @s[scores={soundwave_color=20..}] soundwave_color 0