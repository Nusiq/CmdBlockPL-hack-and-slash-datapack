
execute if entity @s[scores={playerAiState=5000..5099}] if entity @e[tag=enemy,distance=2..7] unless entity @e[tag=enemy,distance=..2] run function rpg:ai/players/behaviors/mage_flamethrower/attack
execute if entity @s[scores={playerAiState=5000..5099}] if entity @e[tag=enemy,distance=..2] run function rpg:ai/players/behaviors/mage_flamethrower/escape
execute if entity @s[scores={playerAiState=5100..5199}] run function rpg:ai/players/behaviors/mage_flamethrower/escape_corner


#execute if entity @s[scores={throwerCounter=..0}] run say =======END FLAMETHROWER========
execute if entity @s[scores={throwerCounter=..0}] run function rpg:ai/players/behaviors/idle/start




