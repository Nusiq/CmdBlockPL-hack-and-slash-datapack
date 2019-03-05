tag @e remove THIS_PATH_TMP
tag @s add THIS_PATH_TMP

scoreboard players operation @e[tag=SAVE_PATH] tableIO = @s pathId
execute as @e[tag=SAVE_PATH] run function util:table/list/append

#Kontynuuj pentle dopuki wykonawca nie wskazuje na -1 lub na nieistniejacy byt
execute as @e[tag=PATH] if score @s pathId = @e[tag=THIS_PATH_TMP,limit=1] pathPrev run function rpg:ai/util/pathfinding/search/save_loop
tag @s remove THIS_PATH_TMP