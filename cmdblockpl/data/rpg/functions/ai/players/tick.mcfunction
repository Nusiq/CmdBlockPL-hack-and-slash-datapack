
#Przejscie do stanu idle w wypadku gdy impostera kontroluje gracz
execute as @e[tag=imposter,tag=!AI] unless entity @s[scores={playerAiState=0..999}] run function rpg:ai/players/behaviors/idle/start



#Nagle tp w razie oddalenia sie od gracza
execute as @e[tag=imposter,tag=AI] at @s unless entity @e[tag=imposter,tag=!AI,distance=..30] run function rpg:ai/players/behaviors/emergency_tp

#Zapobiega szukaniu trasy przez imposterow gdy znajduja sie oni w tym samym miejscu dzieki czemu podazajac trasa nie utrzymuja sie razem w jednym miejscu
execute as @e[tag=imposter] at @s run function rpg:ai/util/pathfinding/follow/tick/get_follow_path_premission

#Tryb walki wlacza sie automatycznie jesli w poblizu zostanie wykryty przeciwnik
#!covering_fire,!fight, !scared !flamethrower -> fight
execute as @e[tag=imposter,tag=AI] at @s unless score @s playerAiState matches 2000..5999 if entity @e[tag=enemy,distance=..6] run function rpg:ai/players/behaviors/fight/start


#!covering_fire !scared !flamethrower -> scared
execute as @e[tag=imposter,tag=AI] at @s unless score @s playerAiState matches 3000..5999 if entity @e[tag=SCARY,distance=..6] run function rpg:ai/players/behaviors/scared/start


#State 0 - idle/decision - playerAiState=0..999
function rpg:ai/players/behaviors/idle/tick

#State 1 - follow path - 1000..1999
function rpg:ai/players/behaviors/follow/tick

#State 2 - fight - playerAiState=2000..2999
function rpg:ai/players/behaviors/fight/tick

#State 3 - gunner minigun - playerAiState=3000..3999
execute as @e[tag=imposter2,tag=AI,scores={playerAiState=3000..3999}] at @s run function rpg:ai/players/behaviors/gunner_minigun/imposter_tick

#State 4 - scared - playerAiState=4000..4999
function rpg:ai/players/behaviors/scared/tick

#State 5  mage flamethrower - playerAiState=5000..5999
execute as @e[tag=imposter1,tag=AI,scores={playerAiState=5000..5999}] at @s run function rpg:ai/players/behaviors/mage_flamethrower/imposter_tick




