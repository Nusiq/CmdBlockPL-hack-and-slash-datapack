execute as @e[tag=player2] at @s run function rpg:mechanic/cursor/set

#Nieobslugiwane przez gracza
execute unless entity @e[tag=player2] run tag @e[tag=CURSOR] remove CURSOR
execute unless entity @e[tag=player2] as @e[tag=enemy,limit=1,sort=nearest] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["CURSOR"]}

execute as @e[tag=CURSOR] at @s run teleport @s ~ ~0.5 ~

execute as @e[tag=imposter2] at @s positioned ~ ~0.5 ~ facing entity @e[tag=CURSOR,limit=1] feet run function rpg:player/skill/gunner/sniper/loop

playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0

#tag @s add cooldown3
scoreboard players operation @s cooldown3 = gunner var_cooldown3 