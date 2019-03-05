#say GUNNER MINIGUN START
tag @s remove RUN_FOLLOW_PATH_TICK
scoreboard players set @s playerAiState 3000
scoreboard players set @s playerAiTimer 0
function rpg:player/skill/gunner/covering_fire/start_imposter
