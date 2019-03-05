execute unless entity @e[tag=player1] run tp @s ~ ~ ~ facing entity @e[tag=enemy,limit=1,sort=nearest]

execute at @s run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Duration:200,Tags:["flare","flare_init","SCARY"]}

execute store result entity @e[tag=flare_init,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
playsound entity.blaze.shoot master @a ~ ~ ~ 1 0.5 0
tag @e[tag=flare_init] remove flare_init

tag @s add cooldown4
scoreboard players operation @s cooldown4 = mage var_cooldown4