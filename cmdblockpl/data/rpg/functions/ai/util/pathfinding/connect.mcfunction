#Laczy wszystkie elementy sciezki (tag=PATH) z wykonawca funkcji
#ktory tez powinien byc elementem sciezki.
#Element sciezki do polaczenia powinien miec tagi:
#TRY_CONNECT_IN - jesli ma byc zrobione polaczenie wchodzace do niego (z wykonawcy funkcji)
#TRY_CONNECT_OUT - jesli ma byc zrobione wychodzace z niego (do wykonawcy funkcji)
#Uwaga: Polaczenia sa zapisywane w tabelach z util:table/ kazdy element sciezki ma
#generowane ID z przedzialu 0-255. Jesli element o id rownym X ma w tablicy na miejscu Y zapisana
#liczbe N to oznacza to ze istnieje polaczenie wychodzace z Y i wchodzace do X o dlugosci N

#Licze odleglosci od wszystkich istniejacych znacznikow trasy
tag @e[tag=PATH,tag=TRY_CONNECT_OUT] add LOS_OBSERVER_TMP
tag @e[tag=PATH,tag=TRY_CONNECT_IN] add LOS_OBSERVER_TMP
tag @s remove LOS_OBSERVER_TMP
execute at @s run function rpg:ai/util/pathfinding/test_connection/run
#function util:check_distance/run


#Kazdy istniejacy znacznik trasy zapisuje sobie w table[pathId(@s)] odleglosc od @s
scoreboard players operation @e[tag=LOS_SEE_TMP,tag=TRY_CONNECT_OUT,tag=DIDNT_DROP_TMP] tableIndex = @s pathId
execute as @e[tag=LOS_SEE_TMP,tag=TRY_CONNECT_OUT,tag=DIDNT_DROP_TMP] run scoreboard players operation @s tableIO = @s distance
execute as @e[tag=LOS_SEE_TMP,tag=TRY_CONNECT_OUT,tag=DIDNT_DROP_TMP] run function util:table/set

#Dodaje polaczenie w 2 strone
tag @e remove CONNECT_ME_TMP
tag @s add CONNECT_ME_TMP
execute as @e[tag=LOS_SEE_TMP,tag=TRY_CONNECT_IN,tag=DIDNT_CLIMB_TMP] run function rpg:ai/util/pathfinding/connect_back
tag @s remove CONNECT_ME_TMP

tag @e[tag=TRY_CONNECT_IN] remove TRY_CONNECT_IN
tag @e[tag=TRY_CONNECT_OUT] remove TRY_CONNECT_OUT
tag @e[tag=DIDNT_DROP_TMP] remove DIDNT_DROP_TMP
tag @e[tag=DIDNT_CLIMB_TMP] remove DIDNT_CLIMB_TMP