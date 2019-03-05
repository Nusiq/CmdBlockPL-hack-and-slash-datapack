#Funkcja tick dla walczacych imposterow
execute as @e[tag=imposter,tag=AI,scores={playerAiState=2000..2999}] at @s run function rpg:ai/players/behaviors/fight/tick_imposter

