particle minecraft:flame ~ ~ ~ 1 0.1 1 0.01 20 force
particle minecraft:smoke ~ ~ ~ 1 0.1 1 0.01 3 force
particle minecraft:lava ~ ~ ~ 1 0.1 1 0.01 1 force
execute at @s positioned ~ ~1 ~ if entity @e[distance=..2,tag=enemy,limit=1] run tag @e[tag=imposter1] add dealtdmg
execute at @s positioned ~ ~1 ~ as @e[distance=..2,tag=enemy,limit=1] store result entity @s Fire short 1 run scoreboard players get mage var_firetime
execute at @s positioned ~ ~1 ~ as @e[distance=..2,tag=enemy,limit=1] run scoreboard players operation @s damageTaken = mage var_firedmg
execute at @s positioned ~ ~1 ~ as @e[distance=..2,tag=enemy,limit=1] run function rpg:mechanic/mobhealth/damage