summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ELECTRIC_PULSE","ELECTRIC_PULSE_INIT"],Duration:200s}
execute store result entity @e[tag=ELECTRIC_PULSE_INIT,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0] 
execute store result entity @e[tag=ELECTRIC_PULSE_INIT,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
tag @e[tag=ELECTRIC_PULSE_INIT] remove ELECTRIC_PULSE_INIT