execute if entity @s[tag=conga_start] run function rpg:mechanic/conga/random
execute unless entity @s[tag=conga_start] unless entity @e[tag=conga_start,distance=..0.8] facing entity @e[tag=conga_start] feet run function rpg:ai/util/movement/walk_forward
execute unless entity @s[tag=conga_start] if entity @e[tag=conga_start,distance=..0.8] align y run tp @s ~ ~ ~ 
tag @e[tag=conga_start] remove conga_start
tag @s add conga_start

execute if score CURR_CONGA var = CONGA_STATE var at @s run tp @s ~ ~0.45 ~
execute if score CURR_CONGA var = CONGA_STATE var at @s run particle minecraft:enchanted_hit ~ ~1.0 ~ 0.0 0.1 0.0 0.1 1
scoreboard players remove CURR_CONGA var 1