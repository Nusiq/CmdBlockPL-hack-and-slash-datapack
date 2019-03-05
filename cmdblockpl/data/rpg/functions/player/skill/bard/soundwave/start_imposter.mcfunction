execute unless entity @e[tag=player4] run teleport @s ~ ~ ~ facing entity @e[tag=enemy,limit=1,sort=nearest]
execute at @s run function rpg:mechanic/soundwave/start
tag @s add cooldown4
scoreboard players operation @s cooldown4 = bard var_cooldown4