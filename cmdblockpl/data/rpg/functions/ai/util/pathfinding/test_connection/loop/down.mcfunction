#say DOWN
#particle minecraft:end_rod
#Zwiekszenie licznika odleglosci oraz sprawdzenie czy cel nie zostal osiagniety
scoreboard players add @s distance 1
tag @s[distance=..0.5] add LOS_SEE_TMP
tag @s[tag=DIDNT_DROP_TMP] remove DIDNT_DROP_TMP
#DOWN
execute unless entity @s[tag=LOS_SEE_TMP] align y unless block ~ ~-1 ~ #util:full_blocks positioned ~ ~-1 ~ run function rpg:ai/util/pathfinding/test_connection/loop/down
#FORWARD UP (FULL BLOCK -> STAIRS)
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ^ ^ ^1 #util:slabs[type=bottom] if block ~ ~-1 ~ #util:full_blocks positioned ^ ^ ^1 positioned ~ ~0.5 ~ run function rpg:ai/util/pathfinding/test_connection/loop/forward_stairs_dropped
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ^ ^ ^1 #util:stairs[half=bottom] if block ~ ~-1 ~ #util:full_blocks positioned ^ ^ ^1 positioned ~ ~0.5 ~ run function rpg:ai/util/pathfinding/test_connection/loop/forward_stairs_dropped
#FORWARD NORMAL
execute unless entity @s[tag=LOS_SEE_TMP] align y unless block ^ ^ ^1 #util:solid if block ~ ~-1 ~ #util:full_blocks positioned ^ ^ ^1 run function rpg:ai/util/pathfinding/test_connection/loop/forward_dropped
#FORWARD DOWN (FULL BLOCK -> STAIRS)
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ~ ~-1 ~ #util:slabs[type=bottom] positioned ~ ~-0.5 ~ run function rpg:ai/util/pathfinding/test_connection/loop/forward_stairs_dropped
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ~ ~-1 ~ #util:stairs[half=bottom] positioned ~ ~-0.5 ~ run function rpg:ai/util/pathfinding/test_connection/loop/forward_stairs_dropped
#say DOWN END


