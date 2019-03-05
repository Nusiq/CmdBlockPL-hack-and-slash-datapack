tag @e[tag=FOLLOW_TMP] remove FOLLOW_TMP
tag @e[tag=ESCAPE_TMP] remove ESCAPE_TMP
tag @e[tag=LOOK_AT_TMP] remove LOOK_AT_TMP

tag @e[limit=1,tag=hitdetection,sort=nearest,distance=..20] add LOOK_AT_TMP

tag @e[tag=LOOK_AT_TMP,distance=..5] add ESCAPE_TMP
execute unless entity @e[tag=ESCAPE_TMP] run tag @e[tag=LOOK_AT_TMP,distance=10..20] add FOLLOW_TMP

teleport @s ~ ~ ~ facing entity @e[tag=LOOK_AT_TMP,limit=1] eyes
execute at @s run teleport @s ~ ~ ~ ~ 0

#Idz jesli nie ma calych blokow
execute if entity @e[tag=FOLLOW_TMP,limit=1] unless block ^ ^ ^0.2 #util:solid run teleport ^ ^ ^0.1
execute if entity @e[tag=ESCAPE_TMP,limit=1] unless block ^ ^ ^-0.2 #util:solid run teleport ^ ^ ^-0.1

#Wejdz na schodki/plytki
execute if entity @e[tag=FOLLOW_TMP,limit=1] if block ^ ^ ^0.2 #util:slabs[type=bottom] align y positioned ~ ~0.5 ~ run teleport ^ ^ ^0.1
execute if entity @e[tag=ESCAPE_TMP,limit=1] if block ^ ^ ^-0.2 #util:slabs[type=bottom] align y positioned ~ ~0.5 ~ run teleport ^ ^ ^-0.1
execute if entity @e[tag=FOLLOW_TMP,limit=1] if block ^ ^ ^0.2 #util:stairs[half=bottom] align y positioned ~ ~0.5 ~ run teleport ^ ^ ^0.1
execute if entity @e[tag=ESCAPE_TMP,limit=1] if block ^ ^ ^-0.2 #util:stairs[half=bottom] align y positioned ~ ~0.5 ~ run teleport ^ ^ ^-0.1

#Wejdz ze shcodkow/plytek na cale bloki
execute if entity @e[tag=FOLLOW_TMP,limit=1] if block ~ ~ ~ #util:slabs[type=bottom] if block ^ ^ ^0.2 #util:full_blocks align y positioned ~ ~1 ~ unless block ~ ~ ~ #util:solid run teleport ^ ^ ^0.1
execute if entity @e[tag=ESCAPE_TMP,limit=1] if block ~ ~ ~ #util:slabs[type=bottom] if block ^ ^ ^-0.2 #util:full_blocks align y positioned ~ ~1 ~ unless block ~ ~ ~ #util:solid run teleport ^ ^ ^-0.1
execute if entity @e[tag=FOLLOW_TMP,limit=1] if block ~ ~ ~ #util:stairs[half=bottom] if block ^ ^ ^0.2 #util:full_blocks align y positioned ~ ~1 ~ unless block ~ ~ ~ #util:solid run teleport ^ ^ ^0.1
execute if entity @e[tag=ESCAPE_TMP,limit=1] if block ~ ~ ~ #util:stairs[half=bottom] if block ^ ^ ^-0.2 #util:full_blocks align y positioned ~ ~1 ~ unless block ~ ~ ~ #util:solid run teleport ^ ^ ^-0.1


#-------------------------------------------------------------------------------
#Zeskocz (caly blok)
execute align y positioned ~ ~-1 ~ unless block ~ ~ ~ #util:solid run teleport ~ ~ ~ 
execute align y positioned ~ ~-1 ~ unless block ~ ~ ~ #util:solid run teleport ~ ~ ~

#Zeskocz (pol bloku)
execute at @s align y positioned ~ ~-0.5 ~ if block ~ ~ ~ #util:slabs[type=bottom] run teleport ~ ~ ~ 
execute at @s align y positioned ~ ~-0.5 ~ if block ~ ~ ~ #util:slabs[type=bottom] run teleport ~ ~ ~
execute at @s align y positioned ~ ~-0.5 ~ if block ~ ~ ~ #util:stairs[half=bottom] run teleport ~ ~ ~ 
execute at @s align y positioned ~ ~-0.5 ~ if block ~ ~ ~ #util:stairs[half=bottom] run teleport ~ ~ ~


execute at @s align y positioned ~ ~ ~ unless block ~ ~ ~ #util:solid run teleport ~ ~ ~ 
execute at @s align y positioned ~ ~ ~ unless block ~ ~ ~ #util:solid run teleport ~ ~ ~

tag @e[tag=hitdetection,distance=..20] add LOS_OBSERVER_TMP
tag @e[tag=LOS_SEE_TMP] remove LOS_SEE_TMP
function util:check_line_of_sight/run 
execute if entity @s[scores={mobSorcererState=999}] facing entity @e[sort=nearest,distance=..20,limit=1,tag=LOS_SEE_TMP] feet run function rpg:ai/mobs/sorcerer/cast_spell
execute if entity @s[scores={mobSorcererState=999}] if entity @e[tag=hitdetection,distance=..10] unless entity @e[sort=nearest,distance=..20,limit=1,tag=LOS_SEE_TMP] run scoreboard players set @s mobSorcererState 4000
scoreboard players remove @s[scores={mobSorcererState=999}] mobSorcererState 5



