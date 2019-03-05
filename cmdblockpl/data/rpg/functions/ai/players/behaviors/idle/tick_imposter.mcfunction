#Wybor losowego ruchu
scoreboard players set @s[scores={playerAiState=..0}] RANDOM_MAX 3
execute if entity @s[scores={playerAiState=..0}] run function util:random/run
scoreboard players set @s[scores={playerAiState=0,RANDOMIZER=0}] playerAiState 55
scoreboard players set @s[scores={playerAiState=0,RANDOMIZER=1}] playerAiState 64
scoreboard players set @s[scores={playerAiState=0,RANDOMIZER=2}] playerAiState 72
scoreboard players remove @s playerAiState 1
execute at @s[scores={playerAiState=0}] run function rpg:ai/players/behaviors/idle/select_random_move

#Odbicie od sciany
execute at @s if block ^ ^ ^0.2 #util:full_blocks run tp @s ~ ~ ~ ~-180 0

#Ruch do przodu
execute at @s[scores={playerAiState=40..}] run function rpg:ai/util/movement/walk_forward



