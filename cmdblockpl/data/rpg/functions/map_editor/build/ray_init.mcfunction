summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["brush"]}
tp @e[type=area_effect_cloud,distance=..1,limit=1,sort=nearest] @s
scoreboard players operation @e[type=area_effect_cloud,distance=..1,limit=1,sort=nearest] brush_size = @s brush_size

execute as @e[type=area_effect_cloud,tag=brush,distance=..1,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^0.8 anchored feet run function rpg:map_editor/build/ray_tick