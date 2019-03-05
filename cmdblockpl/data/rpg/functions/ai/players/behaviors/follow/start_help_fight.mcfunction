#say FOLLOW HELP START
tag @s remove RUN_FOLLOW_PATH_TICK
scoreboard players set @s playerAiState 1100
scoreboard players set @s playerAiTimer 0

#Opoznienie przed nastepnym poszukiwaniem traszy (gdyby zaszlo zadanie jej poszukiwania)
scoreboard players set @s pathSearchDelay 10

#Wyszukiwanie trasy do najblizszego znacznika znajdujacego sie obok jakiegos gracza
tag @e[tag=PATH_NEAR_FIGHTING_IMPOSTER] remove PATH_NEAR_FIGHTING_IMPOSTER
execute as @e[tag=imposter,scores={playerAiState=2000..2999}] at @s run tag @e[tag=PATH,limit=1,sort=nearest] add PATH_NEAR_FIGHTING_IMPOSTER
tag @e[limit=1,sort=nearest,tag=PATH_NEAR_FIGHTING_IMPOSTER] add PATH_FINDER_TARGET
execute as @s at @s run function rpg:ai/util/pathfinding/search_entity_path/run




