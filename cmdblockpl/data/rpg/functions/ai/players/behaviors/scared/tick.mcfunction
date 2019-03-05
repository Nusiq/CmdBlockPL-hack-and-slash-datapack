#Jesli w poblizu nie ma nic strasznego to przestan uciekac
#scared -> idle
execute as @e[tag=imposter,tag=AI,scores={playerAiState=4000..4999}] at @s unless entity @e[tag=SCARY,distance=..8] run function rpg:ai/players/behaviors/idle/start


#Standardowe ruchy dla impostera w stanie scared
execute as @e[tag=imposter,tag=AI,scores={playerAiState=4000..4999}] at @s run function rpg:ai/players/behaviors/scared/tick_imposter