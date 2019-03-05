#Zapisuje wynik z przeszukania trasy na bytach z tagiem SAVE_PATH
#usuwa tym bytom ten tag

execute as @e[tag=SAVE_PATH] run function util:table/list/reset
execute as @e[tag=PATH_SOURCE,limit=1] run function rpg:ai/util/pathfinding/search/save_loop

tag @e[tag=SAVE_PATH] remove SAVE_PATH