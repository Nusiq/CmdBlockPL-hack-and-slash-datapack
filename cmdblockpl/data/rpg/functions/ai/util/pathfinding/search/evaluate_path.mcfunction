scoreboard players operation @s pathScoreTMP = @s tableIO
scoreboard players operation @s pathScoreTMP += CURR_PATH_SCORE pathScoreTMP

#Jezeli nie bylo innej trasy dochodzacej do tego punktu to to jest nowa trasa dochodzaca do tego punktu
execute unless entity @s[scores={pathScore=..2147483647}] run function rpg:ai/util/pathfinding/search/set_new_best_path 

#Jesli nowa trasa jest lepsza od poprzedniej to nadpisz ta poprzednia
execute if score @s pathScoreTMP < @s pathScore run function rpg:ai/util/pathfinding/search/set_new_best_path