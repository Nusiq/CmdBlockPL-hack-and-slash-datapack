execute positioned ^ ^1 ^0.2 run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet_init","shotgun_bullet_1"]}
execute positioned ^ ^1 ^0.2 run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet_init","shotgun_bullet_2"]}
execute positioned ^ ^1 ^0.2 run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet_init","shotgun_bullet_3"]}
execute positioned ^ ^1 ^0.2 run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet_init","shotgun_bullet_4"]}
execute positioned ^ ^1 ^0.2 run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet_init","shotgun_bullet_5"]}
execute as @e[tag=player2] at @s run function rpg:mechanic/cursor/set

#Nieobslugiwane przez gracza
execute unless entity @e[tag=player2] run tag @e[tag=CURSOR] remove CURSOR
execute unless entity @e[tag=player2] as @e[tag=enemy,limit=1,sort=nearest] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["CURSOR"]}

execute as @e[tag=CURSOR] at @s run teleport @s ~ ~0.5 ~

execute as @e[tag=bullet_init] at @s run teleport @s ~ ~ ~ facing entity @e[tag=CURSOR,limit=1]
execute unless entity @e[tag=player2] run teleport @s ~ ~ ~ facing entity @e[tag=CURSOR,limit=1]
#execute as @e[tag=bullet_init] store result entity @s Rotation[0] float 1 run data get entity @e[tag=imposter2,limit=1] Rotation[0]
#execute as @e[tag=bullet_init] store result entity @s Rotation[1] float 1 run data get entity @e[tag=imposter2,limit=1] Rotation[1]
execute as @e[tag=shotgun_bullet_1] at @s run teleport @s ~ ~ ~ ~6 ~
execute as @e[tag=shotgun_bullet_2] at @s run teleport @s ~ ~ ~ ~-6 ~
execute as @e[tag=shotgun_bullet_3] at @s run teleport @s ~ ~ ~ ~3 ~
execute as @e[tag=shotgun_bullet_4] at @s run teleport @s ~ ~ ~ ~-3 ~
tag @e[tag=bullet_init] remove bullet_init
tag @e[tag=shotgun_bullet_1] remove shotgun_bullet_1
tag @e[tag=shotgun_bullet_2] remove shotgun_bullet_2
tag @e[tag=shotgun_bullet_3] remove shotgun_bullet_3
tag @e[tag=shotgun_bullet_4] remove shotgun_bullet_4
tag @e[tag=shotgun_bullet_5] remove shotgun_bullet_5
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.1
particle flame ^ ^1 ^0.3 0.1 0.1 0.1 0.001 5 force

#execute as @e[tag=imposter2] run tag @s add cooldown0
scoreboard players operation @e[tag=imposter2] cooldown0 = gunner var_cooldown0 


