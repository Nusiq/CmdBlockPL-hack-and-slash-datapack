execute positioned ^ ^ ^0.3 run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1 force @a
tag @e remove TAKE_DAMAGE_TMP
execute positioned ^ ^ ^0.3 run tag @e[tag=hitdetection,distance=..0.3,limit=1] add TAKE_DAMAGE_TMP
scoreboard players set @e[tag=TAKE_DAMAGE_TMP] damageTaken 15
execute as @e[tag=TAKE_DAMAGE_TMP] run function rpg:mechanic/health/damage 
execute positioned ^ ^ ^0.3 unless entity @e[tag=hitdetection,distance=..0.3] unless block ~ ~1 ~ #util:solid run function rpg:mechanic/laser/loop
