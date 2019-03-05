tag @e[tag=THIS_ENTITY_TMP] remove THIS_ENTITY_TMP
tag @s add THIS_ENTITY_TMP
execute as @e[tag=PATH] if score @s pathId = @e[tag=THIS_ENTITY_TMP,limit=1] tableIO run tag @s add NEXT_STEP
tag @s remove THIS_ENTITY_TMP

teleport @s ~ ~ ~ facing entity @e[tag=NEXT_STEP,limit=1]



execute if entity @e[tag=NEXT_STEP,distance=..0.1] run function rpg:ai/util/pathfinding/follow/get_next_step
tag @e[tag=NEXT_STEP] remove NEXT_STEP

execute unless entity @s[scores={tableIO=..2147483647}] run tag @s remove RUN_FOLLOW_PATH_TICK


execute as @s at @s run function rpg:ai/util/movement/walk_forward

execute if entity @s[tag=FAIL_TMP,y_rotation=0..90] rotated 0 0 unless block ~ ~ ~0.5 #util:solid run function rpg:ai/util/movement/walk_forward
execute if entity @s[tag=FAIL_TMP,y_rotation=0..90] rotated 90 0 unless block ~-0.5 ~ ~ #util:solid run function rpg:ai/util/movement/walk_forward
execute if entity @s[tag=FAIL_TMP,y_rotation=90..180] rotated 90 0 unless block ~-0.5 ~ ~ #util:solid run function rpg:ai/util/movement/walk_forward
execute if entity @s[tag=FAIL_TMP,y_rotation=90..180] rotated 180 0 unless block ~ ~ ~-0.5 #util:solid run function rpg:ai/util/movement/walk_forward
execute if entity @s[tag=FAIL_TMP,y_rotation=180..270] rotated 180 0 unless block ~ ~ ~-0.5 #util:solid run function rpg:ai/util/movement/walk_forward
execute if entity @s[tag=FAIL_TMP,y_rotation=180..270] rotated 270 0 unless block ~0.5 ~ ~ #util:solid run function rpg:ai/util/movement/walk_forward
execute if entity @s[tag=FAIL_TMP,y_rotation=-90..0] rotated -90 0 unless block ~0.5 ~ ~ #util:solid run function rpg:ai/util/movement/walk_forward
execute if entity @s[tag=FAIL_TMP,y_rotation=-90..0] rotated 0 0 unless block ~ ~ ~0.5 #util:solid run function rpg:ai/util/movement/walk_forward

