tag @e[tag=imposter,distance=..5] add buffed
scoreboard players operation @e[tag=imposter,distance=..5] buffTimer = bard var_dmgbuffdur
execute at @e[tag=imposter,distance=..5] run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 0 50
playsound minecraft:entity.polar_bear.warning master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 2 0.7
playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 1 0.7

execute as @s run tag @s add cooldown3
scoreboard players operation @s cooldown3 = bard var_cooldown3