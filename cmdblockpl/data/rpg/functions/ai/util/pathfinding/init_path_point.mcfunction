tag @s remove PATH_INIT

#Dodaje sobie jakies ID (od 0 do 254 bo taki rozmiar tablicy jest)
#255 jest zarezerwowane dla punktu bytu poszukujacego trasy
scoreboard players operation @s pathId = LAST_ID pathId
scoreboard players add LAST_ID pathId 1
execute if score LAST_ID pathId matches 255 run scoreboard players set LAST_ID pathId 0

#Sprawdzam polaczenia z istniejacymi znacznikami
tag @e[tag=PATH,distance=..25] add TRY_CONNECT_OUT
tag @e[tag=PATH,distance=..25] add TRY_CONNECT_IN
#((To ze ten znacznik tez dostaje te tagi jest rozwiazane pozniej))
function rpg:ai/util/pathfinding/connect