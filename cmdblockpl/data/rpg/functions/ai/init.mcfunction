scoreboard objectives add mob1_bowcooldown dummy
scoreboard objectives add mobSorcererState dummy
scoreboard objectives add mobShooterState dummy

scoreboard objectives add playerAiState dummy
scoreboard objectives add playerAiTimer dummy
scoreboard objectives add imposterID dummy

scoreboard players set @e[tag=imposter] playerAiState 0

function rpg:ai/util/pathfinding/init