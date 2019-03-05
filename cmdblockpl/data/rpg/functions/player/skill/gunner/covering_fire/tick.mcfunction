execute positioned ^ ^1 ^0.2 run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["bullet","bullet_init"]}
#Player
execute as @e[tag=player2] at @s positioned as @s run function rpg:mechanic/cursor/set
effect give @e[tag=player2] slowness 1 4 true
#No player
execute unless entity @e[tag=player2] as @e[tag=enemy,limit=1,sort=nearest] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["CURSOR"]}
execute unless entity @e[tag=player2] unless entity @e[tag=enemy,limit=1,sort=nearest] run summon area_effect_cloud ^ ^ ^5 {Tags:["CURSOR"]}
execute as @e[tag=CURSOR] at @s run teleport @s ~ ~0.5 ~
execute as @e[tag=bullet_init] at @s run teleport @s ~ ~ ~ facing entity @e[tag=CURSOR,limit=1]
execute unless entity @e[tag=player2] run teleport @s ~ ~ ~ facing entity @e[tag=CURSOR,limit=1]
#execute as @e[tag=bullet_init] store result entity @s Rotation[0] float 1 run data get entity @e[tag=imposter2,limit=1] Rotation[0]
tag @e[tag=bullet_init] remove bullet_init

playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.1
particle flame ^ ^1 ^0.3 0.1 0.1 0.1 0.001 1 force
scoreboard players remove @s ammo 1
tag @s[scores={ammo=..0}] remove covering_fire

