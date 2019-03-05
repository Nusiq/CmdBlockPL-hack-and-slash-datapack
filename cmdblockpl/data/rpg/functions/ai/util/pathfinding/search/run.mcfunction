#Ta funkcje wywoluje sie na jednym ze znacznikow trasy
#znacznik trasy na ktorym sie ja wywoluje jest celem trasy
#zrodlo powinno byc otagowane jako PATH_SOURCE
#tag PATH_SOURCE jest zabierany po wywolaniu funkcji
#trasa jest wyszukiwana od konca poniewarz kazdy element trasy wie
#skad przyszlo wyszukiwanie. Oznacza to ze w scoreboardzie
#pathPrev po wyszukaniu tak na prawde bedzie zawsze nastepny krok jaki
#nalezy podjac podazajac trasa a nie poprzedni (nie tak jak wskazuje nazwa)

#TRASA JEST ZAPISYWANA... we wszystkich bytach z tagiem SAVE_PATH
#tag ten jest nastepnie zabierany tym bytom

#Zresetuj poprzednie trasy i oceny tras
scoreboard players reset * pathScore
scoreboard players reset * pathPrev
scoreboard players reset * pathScoreTMP

#Ustaw w root ze poprzednik mial id -1 (nieistniejace) i ze cena dotarcia do
#root to 0
scoreboard players set @s pathPrev -1
scoreboard players set @s pathScore 0


#Rozpocznij przeszukiwanie
tag @s add CHCECK_PATH
function rpg:ai/util/pathfinding/search/get_path
function rpg:ai/util/pathfinding/search/save
#Zabierz tag PATH_SOURCE by nie zostawiac smieci przy innych wywolaniach
tag @e[tag=PATH_SOURCE] remove PATH_SOURCE