tag @s remove PATH_INIT

scoreboard players set @s pathId 255


#Sprawdzam polaczenia z istniejacymi znacznikami
tag @e[tag=PATH,distance=..25] add TRY_CONNECT_OUT
tag @e[tag=PATH,distance=..25] add TRY_CONNECT_IN

#((To ze ten znacznik tez dostaje te tagi jest rozwiazane pozniej))
function rpg:ai/util/pathfinding/connect