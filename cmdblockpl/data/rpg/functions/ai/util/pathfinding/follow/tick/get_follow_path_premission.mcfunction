tag @s add THIS_ENTITY_TMP
execute if score @s imposterID < @e[tag=imposter,distance=..2,tag=!THIS_ENTITY_TMP,limit=1] imposterID run scoreboard players set @s pathSearchDelay 10
tag @s remove THIS_ENTITY_TMP
