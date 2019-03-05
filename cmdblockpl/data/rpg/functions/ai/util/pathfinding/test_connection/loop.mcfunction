scoreboard players reset * pathLoopData
#tag @s remove FORWARD_TMP
#tag @s remove MID_FORWARD_TMP
#tag @s remove UP_FORWARD_TMP
#tag @s remove DOWN_TMP
#tag @s remove HALF_DOWN_TMP
#Kasuje wszystko z ostatkiego wywolania oprocz decyzji o wspinaniu sie (jest kasowane pozniej)
#na tym etapie wystopienie tagu CLIMB_TMP oznacza ze poprzedni ruch to wspinaczka (to znaczy ze nie nalezy spadac)

#particle minecraft:end_rod

#Wejdz ze shcodkow/plytek na cale bloki
execute if block ~ ~ ~ #util:slabs[type=bottom] if block ^ ^ ^1.0 #util:full_blocks align y positioned ~ ~1 ~ unless block ~ ~ ~ #util:solid run scoreboard players set UP_FORWARD_TMP pathLoopData 1
execute if block ~ ~ ~ #util:stairs[half=bottom] if block ^ ^ ^1.0 #util:full_blocks align y positioned ~ ~1 ~ unless block ~ ~ ~ #util:solid run scoreboard players set UP_FORWARD_TMP pathLoopData 1

#Wejdz na schodki/plytki
execute if block ^ ^ ^1.0 #util:slabs[type=bottom] align y positioned ~ ~0.5 ~ unless score UP_FORWARD_TMP pathLoopData matches 1.. run scoreboard players set MID_FORWARD_TMP pathLoopData 1
execute if block ^ ^ ^1.0 #util:stairs[half=bottom] align y positioned ~ ~0.5 ~ unless score UP_FORWARD_TMP pathLoopData matches 1.. run scoreboard players set MID_FORWARD_TMP pathLoopData 1

#Idz jesli nie ma calych blokow
execute unless block ^ ^ ^1.0 #util:solid unless score MID_FORWARD_TMP pathLoopData matches 1.. unless score UP_FORWARD_TMP pathLoopData matches 1.. run scoreboard players set FORWARD_TMP pathLoopData 1



#Zeskocz (pol bloku)
execute align y positioned ~ ~-0.5 ~ if block ~ ~ ~ #util:slabs[type=bottom] run scoreboard players set HALF_DOWN_TMP pathLoopData 1
execute align y positioned ~ ~-0.5 ~ if block ~ ~ ~ #util:stairs[half=bottom] run scoreboard players set HALF_DOWN_TMP pathLoopData 1


#Zeskocz (caly blok)
execute align y positioned ~ ~-1 ~ unless block ~ ~ ~ #util:solid unless score HALF_DOWN_TMP pathLoopData matches 1.. if entity @s[tag=!CLIMB_TMP] run scoreboard players set DOWN_TMP pathLoopData 1


#Spadanie blokuje ruch do przodu tylko jesli w poprzednim ruchu sie nie wspinano
#Sytuacja w ktorej laser moze isc do przodu i wlasnie sie wspinal oznacza ze po prostu skonczyla mu sie sciana do wspinania
execute if score DOWN_TMP pathLoopData matches 1.. if entity @s[tag=!CLIMB_TMP] run scoreboard players reset FORWARD_TMP pathLoopData
tag @s remove CLIMB_TMP


execute align y unless block ~ ~1 ~ #util:solid if entity @s[tag=DIDNT_DROP_TMP] unless score FORWARD_TMP pathLoopData matches 1.. unless score MID_FORWARD_TMP pathLoopData matches 1.. unless score UP_FORWARD_TMP pathLoopData matches 1.. unless score DOWN_TMP pathLoopData matches 1.. unless score HALF_DOWN_TMP pathLoopData matches 1.. run tag @s add CLIMB_TMP
tag @s[tag=CLIMB_TMP] remove DIDNT_CLIMB_TMP
execute if score DOWN_TMP pathLoopData matches 1.. run scoreboard players reset FORWARD_TMP pathLoopData
execute if entity @s[tag=!DIDNT_CLIMB_TMP] run scoreboard players reset DOWN_TMP pathLoopData
execute if score DOWN_TMP pathLoopData matches 1.. run tag @s remove DIDNT_DROP_TMP
#Na tym etapie wszystkie decyzje powinny byc podjete

#Zwiekszenie licznika odleglosci oraz sprawdzenie czy cel nie zostal osiagniety
scoreboard players add @s distance 1
tag @s[distance=..0.5] add LOS_SEE_TMP

#Wykoananie nastepnego ruchu
execute if entity @s[tag=!LOS_SEE_TMP] if score HALF_DOWN_TMP pathLoopData matches 1.. align y positioned ~ ~-0.5 ~ run function rpg:ai/util/pathfinding/test_connection/loop
execute if entity @s[tag=!LOS_SEE_TMP] if score DOWN_TMP pathLoopData matches 1.. align y positioned ~ ~-1 ~ run function rpg:ai/util/pathfinding/test_connection/loop
execute if entity @s[tag=!LOS_SEE_TMP] if score UP_FORWARD_TMP pathLoopData matches 1.. align y positioned ~ ~1 ~ positioned ^ ^ ^1.0 run function rpg:ai/util/pathfinding/test_connection/loop
execute if entity @s[tag=!LOS_SEE_TMP] if score MID_FORWARD_TMP pathLoopData matches 1.. align y positioned ~ ~0.5 ~ positioned ^ ^ ^1.0 run function rpg:ai/util/pathfinding/test_connection/loop
execute if entity @s[tag=!LOS_SEE_TMP] if score FORWARD_TMP pathLoopData matches 1.. align y positioned ^ ^ ^1.0 run function rpg:ai/util/pathfinding/test_connection/loop
execute if entity @s[tag=CLIMB_TMP,tag=!LOS_SEE_TMP] align y positioned ~ ~1 ~ run function rpg:ai/util/pathfinding/test_connection/loop



