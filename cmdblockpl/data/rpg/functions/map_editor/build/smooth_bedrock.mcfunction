execute unless block ~ ~ ~ minecraft:bedrock positioned ^ ^-0.8 ^ run function rpg:map_editor/build/quadrat_bedrock
execute if block ~ ~ ~ minecraft:bedrock positioned ~ ~8 ~ run function rpg:map_editor/build/quadrat
execute if block ~ ~ ~ minecraft:bedrock positioned ~ ~8 ~ run say 1

particle flame ~ ~ ~ 0 5 0 0 1