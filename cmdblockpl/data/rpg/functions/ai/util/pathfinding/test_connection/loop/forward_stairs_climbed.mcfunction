#say FORWARD_STAIRS_CLIMBED
#particle minecraft:end_rod
#Zwiekszenie licznika odleglosci oraz sprawdzenie czy cel nie zostal osiagniety
scoreboard players add @s distance 1
tag @s[distance=..0.5] add LOS_SEE_TMP
#UP
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ^ ^ ^1 #util:full_blocks positioned ~ ~1 ~ if block ^ ^ ^1 #util:solid run function rpg:ai/util/pathfinding/test_connection/loop/up
#FORWARD UP (STAIRS -> FULL BLOCK) (1 blok w gore od align Y)
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ^ ^ ^1 #util:full_blocks positioned ~ ~1 ~ unless block ^ ^ ^1 #util:solid positioned ^ ^ ^1 run function rpg:ai/util/pathfinding/test_connection/loop/forward_climbed
#FORWARD UP (STAIRS -> STAIRS) (1.5 bloku w gore od align Y)
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ^ ^ ^1 #util:full_blocks positioned ~ ~1 ~ if block ^ ^ ^1 #util:slabs[type=bottom] positioned ~ ~0.5 ~ positioned ^ ^ ^1 run function rpg:ai/util/pathfinding/test_connection/loop/forward_climbed
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ^ ^ ^1 #util:full_blocks positioned ~ ~1 ~ if block ^ ^ ^1 #util:stairs[half=bottom] positioned ~ ~0.5 ~ positioned ^ ^ ^1 run function rpg:ai/util/pathfinding/test_connection/loop/forward_climbed
#FORWARD (STAIRS -> STAIRS) (0.5 bloku w gore od align Y)
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ^ ^ ^1 #util:slabs[type=bottom] positioned ^ ^ ^1 positioned ~ ~0.5 ~ run function rpg:ai/util/pathfinding/test_connection/loop/forward_stairs_climbed
execute unless entity @s[tag=LOS_SEE_TMP] align y if block ^ ^ ^1 #util:stairs[half=bottom] positioned ^ ^ ^1 positioned ~ ~0.5 ~ run function rpg:ai/util/pathfinding/test_connection/loop/forward_stairs_climbed
#FORWARD DOWN (STAIRS -> FULL BLOCK) (0 blokow od align Y)
execute unless entity @s[tag=LOS_SEE_TMP] align y unless block ^ ^ ^1 #util:solid positioned ^ ^ ^1 run function rpg:ai/util/pathfinding/test_connection/loop/forward_climbed 
#say FORWARD_STAIRS_CLIMBED END