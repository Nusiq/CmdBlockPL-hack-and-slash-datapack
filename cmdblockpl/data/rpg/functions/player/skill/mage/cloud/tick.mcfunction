execute at @s run function rpg:mechanic/fire/tick_cloud
teleport @s ^ ^ ^0.03
execute unless block ~ ~-0.7 ~ #util:solid run teleport @s ^ ^-0.03 ^
execute if block ~ ~ ~ #util:solid run kill @s
scoreboard players remove @s cloudtime 1
kill @s[scores={cloudtime=..0}]