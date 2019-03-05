#tag @s add turret_loop
#execute as @e[tag=enemy,distance=..8] at @s run function rpg:player/skill/gunner/turret/loop
#tag @s remove turret_loop

#teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=!turret_obstructed,tag=enemy,distance=..8] feet
#tag @e[tag=turret_obstructed] remove turret_obstructed

tag @s[tag=TURRET_ACTIVE] remove TURRET_ACTIVE
execute if entity @e[limit=1,tag=enemy,distance=..8] at @s positioned ^ ^ ^0.2 run summon area_effect_cloud ~ ~0.5 ~ {Duration:100,Tags:["bullet","bullet_init"]}
execute if entity @e[tag=bullet_init] run tag @s add TURRET_ACTIVE
execute store result entity @e[tag=bullet_init,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=bullet_init,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
execute if entity @e[tag=bullet_init] run scoreboard players set @s turret_cooldown 2
execute if entity @e[tag=bullet_init] at @s run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 1 2
execute if entity @e[tag=bullet_init] at @s run particle flame ^ ^1 ^0.4 0.1 0.1 0.1 0.001 1 force
tag @e[tag=bullet_init] remove bullet_init