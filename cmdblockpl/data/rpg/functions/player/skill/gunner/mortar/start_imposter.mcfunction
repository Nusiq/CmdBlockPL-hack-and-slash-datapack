#Przed wywolaniem nalezy ustawic CURSOR w miejscu w ktore ma udezyc pocisk
execute unless entity @a[tag=player2] run tag @e[tag=CURSOR] remove CURSOR
execute unless entity @a[tag=player2] as @e[tag=enemy,limit=1,sort=furthest,distance=..7] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["CURSOR"]}
playsound minecraft:entity.puffer_fish.blow_out master @a ~ ~ ~ 1 0.7

execute if entity @e[tag=CURSOR] run function rpg:mechanic/mortar/start

#tag @s add cooldown5
scoreboard players operation @s cooldown5 = gunner var_cooldown5