execute unless block ~ ~ ~ #rpg:grading positioned ^ ^ ^0.8 run function rpg:map_editor/build/ray_tick_sm
execute if block ~ ~ ~ #rpg:grading run function rpg:map_editor/build/smooth
execute if block ~ ~ ~ minecraft:barrier run function rpg:map_editor/build/smooth 

execute if block ~ ~ ~ minecraft:barrier if block ~ ~-1 ~ air if score @s brush_size matches -1 run function rpg:map_editor/build/quadrat/kwfill
execute if block ~ ~ ~ minecraft:black_concrete if block ~ ~-1 ~ air if score @s brush_size matches -1 run function rpg:map_editor/build/quadrat/kwfill