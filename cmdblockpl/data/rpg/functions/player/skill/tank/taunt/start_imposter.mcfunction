particle minecraft:firework ~ ~2 ~ 0 1 0 0.02 20 force
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 0.8
scoreboard players operation @e[tag=hitdetection,tag=!hitdetection3] hidden = tank var_tauntingtime

tag @s add cooldown5
scoreboard players operation @s cooldown5 = tank var_cooldown5