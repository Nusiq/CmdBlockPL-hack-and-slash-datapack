summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MAGE_MAGIC_MISSLE","MAGE_MISSLE_INIT"],Duration:200s}
execute store result entity @e[tag=MAGE_MISSLE_INIT,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0] 
execute store result entity @e[tag=MAGE_MISSLE_INIT,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
tag @e[tag=MAGE_MISSLE_INIT] remove MAGE_MISSLE_INIT