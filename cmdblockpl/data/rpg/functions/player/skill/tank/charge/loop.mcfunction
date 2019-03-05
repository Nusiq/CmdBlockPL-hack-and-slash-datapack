scoreboard players remove @s chargeLoop 1

execute positioned as @s rotated ~ 0 if block ^ ^ ^1 air run teleport @s ^ ^ ^0.5
execute at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.1 10 force 
execute as @s[tag=player3] at @s run teleport @e[tag=imposter3,limit=1] ~ ~-6 ~ ~ 0

tag @s add pusher
execute at @s positioned ^ ^ ^0.6 as @e[distance=..1,tag=enemy] run function rpg:mechanic/push/front
tag @s remove pusher

execute as @s[scores={chargeLoop=1..}] run function rpg:player/skill/tank/charge/loop