execute store result score N_TURRETS var if entity @e[tag=gunner_turret]
execute if score N_TURRETS var matches 2.. run kill @e[tag=gunner_turret,limit=1,sort=furthest]
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Tags:["gunner_turret","gunner_turret_init"],ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:"5bda9768-ac90-4aaf-9e4d-c7fd09ace1e2",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmIyYWJkNjY5MzlmNGNiNzI1N2E4OGNmNTJmYmM2ZmRjZWVjMTQzM2VjMmE2ZWYxNmQ2MmUzNGY2MjM4NzgxIn19fQ=="}]}}}}]}
teleport @e[tag=gunner_turret_init] ~ ~ ~ ~ ~
scoreboard players set @e[tag=gunner_turret_init] turret_cooldown 0
tag @e[tag=gunner_turret_init] remove gunner_turret_init

#execute as @e[tag=imposter2] run tag @s add cooldown1
scoreboard players operation @s cooldown1 = gunner var_cooldown1 