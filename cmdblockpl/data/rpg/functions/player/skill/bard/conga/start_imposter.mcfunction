function rpg:mechanic/conga/start
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
particle minecraft:dust 1 0 1 1 ~ ~2 ~ 1.3 0 1.3 0 40

tag @s add cooldown1
scoreboard players operation @s cooldown1 = bard var_cooldown1
