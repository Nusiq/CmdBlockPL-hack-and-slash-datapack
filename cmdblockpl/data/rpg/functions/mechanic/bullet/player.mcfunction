execute at @s positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,tag=enemy,limit=1] run tag @e[tag=imposter2] add dealtdmg
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..0.5,tag=enemy,limit=1] run scoreboard players operation @s damageTaken = gunner var_bulletdmg
execute at @s positioned ~ ~-0.5 ~ as @e[distance=..0.5,tag=enemy,limit=1] run function rpg:mechanic/mobhealth/damage
execute at @s positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,tag=enemy] run kill @s
particle minecraft:crit ~ ~ ~ 0 0 0 0.01 2 force