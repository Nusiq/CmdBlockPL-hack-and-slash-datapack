#say FOLLOW START
tag @s remove RUN_FOLLOW_PATH_TICK
scoreboard players set @s playerAiState 1000
scoreboard players set @s playerAiTimer 0

#Opoznienie przed nastepnym poszukiwaniem traszy (gdyby zaszlo zadanie jej poszukiwania)
scoreboard players set @s pathSearchDelay 10

#Wyszukiwanie trasy do najblizszego znacznika znajdujacego sie obok jakiegos gracza
tag @e[tag=PATH_NEAR_PLAYER] remove PATH_NEAR_PLAYER
execute as @a[tag=player] at @s run tag @e[tag=PATH,limit=1,sort=nearest] add PATH_NEAR_PLAYER
tag @e[tag=PATH_FINDER_TARGET] remove PATH_FINDER_TARGET
tag @e[limit=1,sort=nearest,tag=PATH_NEAR_PLAYER] add PATH_FINDER_TARGET

execute as @s at @s run function rpg:ai/util/pathfinding/search_entity_path/run




