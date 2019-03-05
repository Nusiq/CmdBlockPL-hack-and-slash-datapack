#Usun sobie tag oznaczajacy ze ta trasa jest do sprawdzenia
tag @s remove CHCECK_PATH

#Oznacz potencjalne nastepne kroki trasy
#warunki oznaczenia jako potencjalny nastepny krok trasy to:
#( cel.table[@s.pathId] != null)
scoreboard players operation @e[tag=PATH] tableIndex = @s pathId
execute as @e[tag=PATH] run function util:table/get
#cel.table[@s.pathId] jest zapisane w scoreboardzie tableIO
#jesli @s[tag=PATH,scores={tableIO=..2147483647}] to jest to potencjalna trasa


#Idziemy od tylu wiec nastepnych krokow trasy moze byc kilka (tak na prawde to w nich
#sie oznacza poprzednie korki trasy)
#Warunkiem wybrania nastepnego potencjalnego nastepnego celu jako nastepny cel jest:
#((cel.table[@s.pathId]+@s.pathScore < cel.pathScore) || (cel.pathScore == null))
#jesli wierzcholek grafu zostanie wybrany jako nastepny cel to dostanie tag CHCECK_PATH
#chyba ze jest to byt otagowany jako PATH_SOURCE (czyli nasz cel (sprawdzmy od tylu))
scoreboard players operation CURR_PATH_SCORE pathScoreTMP = @s pathScore
execute as @e[tag=PATH,scores={tableIO=..2147483647}] run function rpg:ai/util/pathfinding/search/evaluate_path

#Ponow poszukiwaniach na nowo wybranych celach 
execute as @e[tag=CHCECK_PATH] run function rpg:ai/util/pathfinding/search/get_next_steps
