#Nieobslugiwane przez gracza
execute unless entity @e[tag=player1] run tp @s ~ ~ ~ facing entity @e[tag=enemy,limit=1,sort=nearest]

execute at @s run summon minecraft:fireball ^ ^0.5 ^0.5 {direction:[0.0,0.0,0.0],Tags:["fireball_init","SCARY"]}

execute as @e[tag=fireball_init] at @s rotated as @e[tag=imposter1] run function util:get_direction/run
execute as @e[tag=fireball_init] store result entity @s power[0] double 0.00005 run scoreboard players get @s dirX
execute as @e[tag=fireball_init] store result entity @s power[2] double 0.00005 run scoreboard players get @s dirZ
tag @e[tag=fireball_init] remove fireball_init
particle flame ~ ~ ~ 0.3 0.3 0.3 0.01 50 force
playsound entity.blaze.shoot master @a ~ ~ ~ 1 0.1 0

tag @s add cooldown1
scoreboard players operation @s cooldown1 = mage var_cooldown1