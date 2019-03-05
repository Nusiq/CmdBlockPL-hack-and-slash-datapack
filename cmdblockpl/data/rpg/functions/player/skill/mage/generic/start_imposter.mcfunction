summon minecraft:area_effect_cloud ^ ^0.5 ^0.8 {Tags:["mage_generic_init","mage_generic"],Duration:100s}
execute as @e[tag=CURSOR] at @s run teleport @s ~ ~0.5 ~

#Nie obslugiwane przez gracza
execute unless entity @e[tag=player1] run tag @e[tag=CURSOR] remove CURSOR
execute unless entity @e[tag=player1] as @e[tag=enemy,limit=1,sort=nearest] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["CURSOR"]}

execute as @e[tag=mage_generic_init] at @s run teleport @s ~ ~ ~ facing entity @e[tag=CURSOR,limit=1]
#execute store result entity @e[tag=mage_generic_init,limit=1] Rotation[0] float 1 run data get entity @e[tag=imposter1,limit=1] Rotation[0] 
tag @e[tag=mage_generic_init] remove mage_generic_init 
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
tag @s add cooldown0
scoreboard players operation @s cooldown0 = mage var_cooldown0