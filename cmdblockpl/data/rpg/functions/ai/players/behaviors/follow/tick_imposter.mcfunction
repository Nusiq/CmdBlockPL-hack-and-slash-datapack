#Podazanie sciezka (wykonywanie krokow)
execute if entity @s[tag=RUN_FOLLOW_PATH_TICK] at @s run function rpg:ai/util/pathfinding/follow/tick
execute if entity @s[tag=RUN_FOLLOW_PATH_TICK] at @s run function rpg:ai/util/pathfinding/follow/tick

#Koniec zaplanowanej trasy
#follow -> idle
#execute if entity @s[tag=!RUN_FOLLOW_PATH_TICK] run say KONIEC TRASY
execute if entity @s[tag=!RUN_FOLLOW_PATH_TICK] run function rpg:ai/players/behaviors/idle/start

#Koniec trasy - spotkano impostera kontrolowanego przez gracza (w stanie poszukiwania sciezki do gracza)
#follow -> idle
#execute if score @s playerAiState matches 1000..1099 if entity @e[tag=imposter,tag=!AI,distance=..5] run say SPOTKANO GRACZA
execute if score @s playerAiState matches 1000..1099 if entity @e[tag=imposter,tag=!AI,distance=..5] run function rpg:ai/players/behaviors/idle/start


#Koniec trasy - spotkano walczacego impostera (w stanie poszukiwania sciezki do walczacego impostera)
#follow -> idle
#execute if score @s playerAiState matches 1100..1199 if entity @e[tag=imposter,tag=AI,distance=..5,scores={playerAiState=2000..2999}] run say SPOTKANO WALCZACEGO IMPOSTERA
execute if score @s playerAiState matches 1100..1199 if entity @e[tag=imposter,tag=AI,distance=..5,scores={playerAiState=2000..2999}] run function rpg:ai/players/behaviors/idle/start