#Nieobslugiwane przez gracza
execute unless entity @e[tag=player1] run tp @s ~ ~ ~ facing entity @e[tag=enemy,limit=1,sort=nearest]

execute at @s run summon minecraft:armor_stand ^ ^0.1 ^0.2 {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["flamethrower_init","flamethrower"]}

execute as @e[tag=flamethrower_init] at @s rotated as @e[tag=imposter1] run function util:get_direction/run
execute as @e[tag=flamethrower_init] store result entity @s Motion[0] double 0.0015 run scoreboard players get @s dirX
execute as @e[tag=flamethrower_init] store result entity @s Motion[1] double 0.35 run scoreboard players get 1 var
execute as @e[tag=flamethrower_init] store result entity @s Motion[2] double 0.0015 run scoreboard players get @s dirZ
tag @e[tag=flamethrower_init] remove flamethrower_init

#execute at @e[tag=imposter1] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.01 50 force
playsound entity.blaze.shoot master @a ~ ~ ~ 1 0.1 0
scoreboard players remove @s throwerCounter 1