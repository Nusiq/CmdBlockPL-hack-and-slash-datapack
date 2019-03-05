execute positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,tag=enemy,limit=1] run tag @s add dealtdmg
execute positioned ~ ~-0.5 ~ as @e[distance=..0.5,tag=enemy,limit=1] run scoreboard players operation @s damageTaken = gunner var_bulletdmg
execute positioned ~ ~-0.5 ~ as @e[distance=..0.5,tag=enemy,limit=1] run function rpg:mechanic/mobhealth/damage
