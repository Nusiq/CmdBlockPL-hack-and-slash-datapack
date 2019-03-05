tag @e[tag=ATTACK_TMP] remove ATTACK_TMP
tag @e[tag=enemy,distance=..6] add ATTACK_TMP

teleport @s ~ ~ ~ facing entity @e[tag=ATTACK_TMP,limit=1,sort=nearest] feet
execute at @s run teleport @s ~ ~ ~ ~ 0

execute if entity @e[tag=ATTACK_TMP] at @s run function rpg:ai/players/behaviors/fight/attack_move
execute unless entity @e[tag=ATTACK_TMP] run function rpg:ai/players/behaviors/idle/start

tag @e[tag=ATTACK_TMP] remove ATTACK_TMP

