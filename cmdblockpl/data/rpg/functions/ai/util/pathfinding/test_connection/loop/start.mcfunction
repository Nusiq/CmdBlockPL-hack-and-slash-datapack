#particle minecraft:end_rod
#UP
execute align y unless block ~ ~ ~ #util:slabs[type=bottom] unless block ~ ~ ~ #util:stairs[half=bottom] run function rpg:ai/util/pathfinding/test_connection/loop/forward
#UP
execute align y if block ~ ~ ~ #util:slabs[type=bottom] positioned ~ ~0.5 ~ run function rpg:ai/util/pathfinding/test_connection/loop/forward_stairs
execute align y if block ~ ~ ~ #util:stairs[half=bottom] positioned ~ ~0.5 ~ run function rpg:ai/util/pathfinding/test_connection/loop/forward_stairs