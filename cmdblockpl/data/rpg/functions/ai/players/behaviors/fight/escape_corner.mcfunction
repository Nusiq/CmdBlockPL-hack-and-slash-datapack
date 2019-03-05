scoreboard players remove @s playerAiState 1
scoreboard players set @s[scores={playerAiState=2100}] playerAiState 2000

execute if entity @s[y_rotation=0..90] rotated 0 0 unless block ~ ~ ~-0.5 #util:solid run function rpg:ai/util/movement/walk_backward
execute if entity @s[y_rotation=0..90] rotated 90 0 unless block ~0.5 ~ ~ #util:solid run function rpg:ai/util/movement/walk_backward
execute if entity @s[y_rotation=90..180] rotated 90 0 unless block ~0.5 ~ ~ #util:solid run function rpg:ai/util/movement/walk_backward
execute if entity @s[y_rotation=90..180] rotated 180 0 unless block ~ ~ ~0.5 #util:solid run function rpg:ai/util/movement/walk_backward
execute if entity @s[y_rotation=180..270] rotated 180 0 unless block ~ ~ ~0.5 #util:solid run function rpg:ai/util/movement/walk_backward
execute if entity @s[y_rotation=180..270] rotated 270 0 unless block ~-0.5 ~ ~ #util:solid run function rpg:ai/util/movement/walk_backward
execute if entity @s[y_rotation=-90..0] rotated -90 0 unless block ~-0.5 ~ ~ #util:solid run function rpg:ai/util/movement/walk_backward
execute if entity @s[y_rotation=-90..0] rotated 0 0 unless block ~ ~ ~-0.5 #util:solid run function rpg:ai/util/movement/walk_backward

execute at @s run function rpg:ai/util/movement/walk_backward