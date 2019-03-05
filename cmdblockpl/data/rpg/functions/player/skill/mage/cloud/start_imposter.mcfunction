execute unless entity @e[tag=player1] run tp @s ~ ~ ~ facing entity @e[tag=enemy,limit=1,sort=nearest]
execute at @s positioned ^ ^ ^0.2 run summon minecraft:area_effect_cloud ^ ^0.5 ^0.8 {Tags:["mage_cloud_init","mage_cloud"],Duration:10000s}
scoreboard players operation @e[tag=mage_cloud_init] cloudtime = mage var_cloudtime
execute store result entity @e[tag=mage_cloud_init,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
#execute store result entity @e[tag=mage_cloud_init,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
tag @e[tag=mage_cloud_init] remove mage_cloud_init

playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.5

tag @s add cooldown5
scoreboard players operation @s cooldown5 = mage var_cooldown5