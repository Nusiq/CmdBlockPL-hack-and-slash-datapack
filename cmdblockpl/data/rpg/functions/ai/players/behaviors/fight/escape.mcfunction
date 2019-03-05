tag @e[tag=ESCAPE_TMP] remove ESCAPE_TMP
tag @e[tag=enemy,distance=..6] add ESCAPE_TMP

teleport @s ~ ~ ~ facing entity @e[tag=ESCAPE_TMP,limit=1,sort=nearest] feet
execute at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=ESCAPE_TMP] at @s run function rpg:ai/players/behaviors/fight/escape_move
execute unless entity @e[tag=ESCAPE_TMP] run function rpg:ai/players/behaviors/idle/start

tag @e[tag=ESCAPE_TMP] remove ESCAPE_TMP

