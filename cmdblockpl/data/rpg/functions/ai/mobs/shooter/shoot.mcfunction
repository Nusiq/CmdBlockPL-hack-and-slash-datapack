teleport @s ~ ~ ~ facing entity @e[tag=LOS_SEE_TMP,limit=1,sort=nearest]
execute at @s positioned ^ ^1 ^0.2 run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet_init","enemy_bullet"]}
execute store result entity @e[tag=bullet_init,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0] 1
tag @e[tag=bullet_init] remove bullet_init
playsound minecraft:entity.firework.blast master @a ~ ~ ~ 1 0.1
execute at @s run particle flame ^ ^1 ^0.3 0.1 0.1 0.1 0.001 5 force
effect give @s slowness 1 127 true