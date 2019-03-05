#2000-2999 cast spell LSR (laser)
tag @e[tag=hitdetection,distance=..15] add LOS_OBSERVER_TMP
tag @e[tag=LOS_SEE_TMP] remove LOS_SEE_TMP
function util:check_line_of_sight/run
teleport @s ~ ~ ~ facing entity @e[sort=nearest,distance=..15,limit=1,tag=LOS_SEE_TMP]

execute unless entity @e[tag=LOS_SEE_TMP,distance=..15] run scoreboard players set @s mobSorcererState 995

execute if entity @s[scores={mobSorcererState=2040}] rotated as @s run function rpg:mechanic/laser/start
execute if entity @s[scores={mobSorcererState=2040..}] run scoreboard players set @s mobSorcererState 950