
#idle -> follow
#Potencjalni imposterzy chcacy wyszukiwac trase do gracza - WYBIERANY JEST TYLKO JEDEN
execute as @e[tag=imposter,tag=AI,scores={playerAiState=0..999}] at @s unless entity @s[scores={pathSearchDelay=1..}] unless entity @e[tag=imposter,tag=!AI,distance=..10] unless entity @e[tag=imposter,tag=AI,scores={playerAiState=2000..2999}] run tag @s add FOLLOW_REQUEST_TMP
#Potencjalni imposterzy chcacy wyszukiwac trase do gracza - WYBIERANY JEST TYLKO JEDEN
execute as @e[tag=imposter,tag=AI,scores={playerAiState=0..999}] at @s unless entity @s[scores={pathSearchDelay=1..}] if entity @e[tag=imposter,tag=AI,scores={playerAiState=2000..2999}] run tag @s add FOLLOW_AND_HELP_REQUEST_TMP
execute as @e[limit=1,tag=FOLLOW_REQUEST_TMP,tag=imposter,sort=random] at @s run function rpg:ai/players/behaviors/follow/start
execute as @e[limit=1,tag=FOLLOW_AND_HELP_REQUEST_TMP,tag=imposter,sort=random] at @s run function rpg:ai/players/behaviors/follow/start_help_fight
tag @e[tag=FOLLOW_REQUEST_TMP] remove FOLLOW_REQUEST_TMP
tag @e[tag=FOLLOW_AND_HELP_REQUEST_TMP] remove FOLLOW_AND_HELP_REQUEST_TMP
#Potencjalni imposterzy chcacy wyszukac trasze do walczacego impostera



#Standardowe losowe ruchy charakterystyczne dla idle
execute as @e[tag=imposter,tag=AI,scores={playerAiState=0..999}] at @s run function rpg:ai/players/behaviors/idle/tick_imposter
