particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 2 force
execute at @s positioned ~ ~-1 ~ if entity @e[distance=..0.5,tag=enemy,limit=1] run tag @e[tag=imposter1] add dealtdmg
execute at @s positioned ~ ~-1 ~ as @e[distance=..1,tag=enemy,limit=1] store result entity @s Fire short 1 run scoreboard players get mage var_firetime
execute at @s positioned ~ ~-1 ~ as @e[distance=..0.5,tag=enemy,limit=1] run scoreboard players operation @s damageTaken = mage var_firedmg
execute at @s positioned ~ ~-1 ~ as @e[distance=..0.5,tag=enemy,limit=1] run function rpg:mechanic/mobhealth/damage