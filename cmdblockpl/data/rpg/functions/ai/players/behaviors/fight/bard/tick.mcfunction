execute if entity @s[scores={playerAiState=2000..2099}] if entity @e[tag=hitdetection4,tag=LOW_HEALTH] run function rpg:ai/players/behaviors/fight/escape
execute if entity @s[scores={playerAiState=2100..2199}] if entity @e[tag=hitdetection4,tag=LOW_HEALTH] run function rpg:ai/players/behaviors/fight/escape_corner
execute if entity @s[scores={playerAiState=2000..2099}] if entity @e[tag=hitdetection4,tag=!LOW_HEALTH] if entity @e[tag=enemy,distance=3..] run function rpg:ai/players/behaviors/fight/escape
execute if entity @s[scores={playerAiState=2100..2199}] if entity @e[tag=hitdetection4,tag=!LOW_HEALTH] if entity @e[tag=enemy,distance=3..] run function rpg:ai/players/behaviors/fight/escape_corner
execute unless entity @s[scores={playerAiTimer=1..}] at @s run function rpg:ai/players/behaviors/fight/bard/select_attack

scoreboard players remove @s playerAiTimer 1





