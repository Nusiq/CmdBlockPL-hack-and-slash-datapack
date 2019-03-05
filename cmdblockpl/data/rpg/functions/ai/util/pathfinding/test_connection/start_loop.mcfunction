#say START_LOOP
tag @s add DIDNT_DROP_TMP
tag @s add DIDNT_CLIMB_TMP
function rpg:ai/util/pathfinding/test_connection/loop/start
#Usuniecie wszystkich decyzji
#say START_LOOP END

#tag @s remove CLIMB_TMP
#scoreboard players reset * pathLoopDat
