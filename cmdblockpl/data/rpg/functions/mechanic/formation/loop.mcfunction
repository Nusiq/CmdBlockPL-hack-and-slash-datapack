execute unless score CURR_FORMATION var matches 0 unless entity @s[tag=formation_start] positioned ~ ~ ~-1 unless entity @e[tag=formation_start,distance=..0.05] facing entity @e[tag=formation_start] feet positioned ~ ~ ~1 run function rpg:ai/util/movement/walk_forward
execute if score CURR_FORMATION var matches 0 unless entity @s[tag=formation_start] positioned ~-1 ~ ~ unless entity @e[tag=formation_new_line,distance=..0.05] facing entity @e[tag=formation_new_line] feet positioned ~1 ~ ~ run function rpg:ai/util/movement/walk_forward
execute if score CURR_FORMATION var matches 0 run tag @e[tag=formation_new_line] remove formation_new_line
execute if score CURR_FORMATION var matches 0 run tag @s add formation_new_line
tag @e[tag=formation_start] remove formation_start
tag @s add formation_start
scoreboard players add CURR_FORMATION var 1
execute if score CURR_FORMATION var >= N_FORMATION var run scoreboard players set CURR_FORMATION var 0
 
