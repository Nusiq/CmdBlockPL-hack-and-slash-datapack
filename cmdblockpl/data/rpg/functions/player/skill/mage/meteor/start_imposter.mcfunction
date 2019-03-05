summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000,Tags:["meteor_init","meteor","SCARY"]}
spreadplayers ~ ~ 1 5 false @e[tag=meteor_init]

#Nieobslugiwane przez gracza
execute unless entity @e[tag=player1] run tag @e[tag=CURSOR] remove CURSOR
execute unless entity @e[tag=player1] as @e[tag=enemy,limit=1,sort=nearest] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["CURSOR"]}

execute as @e[tag=meteor_init] at @s run teleport @s ~ ~5 ~ facing entity @e[tag=CURSOR,limit=1]

tag @e[tag=meteor_init] remove meteor_init
playsound entity.ender_dragon.growl master @a ~ ~ ~ 2 0.1

tag @s add cooldown3
scoreboard players operation @s cooldown3 = mage var_cooldown3