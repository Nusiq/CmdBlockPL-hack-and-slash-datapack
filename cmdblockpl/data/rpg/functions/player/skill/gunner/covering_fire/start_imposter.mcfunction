tag @s add covering_fire 
scoreboard players set @s ammo 100

#execute as @e[tag=imposter2] run tag @s add cooldown2
scoreboard players operation @s cooldown2 = gunner var_cooldown2 