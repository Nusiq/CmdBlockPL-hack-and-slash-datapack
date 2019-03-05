tag @s[tag=FAIL_TMP] remove FAIL_TMP
tp @s ~ ~ ~ ~ 0

#Idz jesli nie ma calych blokow
execute rotated as @s align y unless block ^ ^ ^0.3 #util:solid run teleport ^ ^ ^0.1

#Wejdz na schodki/plytki
execute rotated as @s if block ^ ^ ^0.3 #util:slabs[type=bottom] align y positioned ~ ~0.5 ~ run teleport ^ ^ ^0.1
execute rotated as @s if block ^ ^ ^0.3 #util:stairs[half=bottom] align y positioned ~ ~0.5 ~ run teleport ^ ^ ^0.1

#Wejdz ze shcodkow/plytek na cale bloki
execute rotated as @s if block ~ ~ ~ #util:slabs[type=bottom] if block ^ ^ ^0.3 #util:full_blocks align y positioned ~ ~1 ~ unless block ~ ~ ~ #util:solid run teleport ^ ^ ^0.1
execute rotated as @s if block ~ ~ ~ #util:stairs[half=bottom] if block ^ ^ ^0.3 #util:full_blocks align y positioned ~ ~1 ~ unless block ~ ~ ~ #util:solid run teleport ^ ^ ^0.1

#-------------------------------------------------------------------------------
#Zeskocz (caly blok)
execute rotated as @s align y positioned ~ ~-1 ~ unless block ~ ~ ~ #util:solid run teleport ~ ~ ~ 

#Zeskocz (pol bloku)
execute rotated as @s at @s align y positioned ~ ~-0.5 ~ if block ~ ~ ~ #util:slabs[type=bottom] run teleport ~ ~ ~ 
execute rotated as @s at @s align y positioned ~ ~-0.5 ~ if block ~ ~ ~ #util:stairs[half=bottom] run teleport ~ ~ ~ 



execute if entity @s[distance=0] run tag @s add FAIL_TMP