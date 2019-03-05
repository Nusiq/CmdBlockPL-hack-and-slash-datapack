execute as @e[tag=enemy,distance=..5] unless entity @s[tag=cantsleep] run scoreboard players operation @s sleepTimer = bard var_sleeptime
execute as @e[tag=enemy,distance=..5] unless entity @s[tag=cantsleep] run data merge entity @s {NoAI:1b}
execute as @e[tag=enemy,distance=..5] unless entity @s[tag=cantsleep] run tag @s add sleeping
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
particle minecraft:dust 1 0 1 1 ~ ~2 ~ 1.3 0 1.3 0 40

execute as @e[tag=imposter4] run tag @s add cooldown1
scoreboard players operation @e[tag=imposter4] cooldown1 = bard var_cooldown1
function rpg:mechanic/cooldown/eq