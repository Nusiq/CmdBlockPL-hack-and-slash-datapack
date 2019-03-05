scoreboard players operation @e[tag=hitdetection,distance=..5] health += bard var_healamount
scoreboard players operation @e[tag=hitdetection1,distance=..5] health < mage var_maxhealth
scoreboard players operation @e[tag=hitdetection2,distance=..5] health < gunner var_maxhealth
scoreboard players operation @e[tag=hitdetection3,distance=..5] health < tank var_maxhealth
scoreboard players operation @e[tag=hitdetection4,distance=..5] health < bard var_maxhealth

execute at @e[tag=hitdetection,distance=..5] run particle minecraft:totem_of_undying ~ ~.7 ~ 0.2 0.6 0.2 0 20
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 2

tag @s add cooldown2
scoreboard players operation @s cooldown2 = bard var_cooldown2