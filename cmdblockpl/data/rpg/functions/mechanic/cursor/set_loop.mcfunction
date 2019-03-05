#Koniec petli przez blok lub entity
execute positioned ^ ^ ^0.3 unless block ~ ~1.5 ~ #rpg:transparent run tag @s add SET_CURSOR_TMP
execute positioned ^ ^ ^0.3 positioned ~ ~1.5 ~ run tag @e[tag=enemy,distance=..0.75,limit=1] add SET_CURSOR_AUTOAIM_TARGET_TMP
execute if entity @e[tag=SET_CURSOR_AUTOAIM_TARGET_TMP] run tag @s add SET_CURSOR_TMP

execute if entity @s[tag=SET_CURSOR_TMP] if entity @e[tag=CURSOR] run teleport @e[tag=CURSOR] ~ ~1.5 ~ 
execute if entity @s[tag=SET_CURSOR_TMP] unless entity @e[tag=CURSOR] run summon area_effect_cloud ~ ~1.5 ~ {Tags:["CURSOR"]}

teleport @e[tag=CURSOR] @e[limit=1,tag=SET_CURSOR_AUTOAIM_TARGET_TMP]

execute at @e[tag=CURSOR] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a

execute positioned ^ ^ ^0.3 unless entity @s[tag=SET_CURSOR_TMP] run function rpg:mechanic/cursor/set_loop
tag @s[tag=SET_CURSOR_TMP] remove SET_CURSOR_TMP

