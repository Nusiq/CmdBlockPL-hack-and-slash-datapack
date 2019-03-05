#Instrukcja obslugi:
# 1. Daj wszystkim obserwatorom tag LOS_OBSERVER_TMP
# 2. Wywolaj ta funkcje na obserwowanym (jako obserwowany i w jego miejscu)
# 3. Obserwatorzy ktorzy widza obserwowanego dostana tag LOS_SEE_TMP
# Uwaga! Tag LOS_SEE_TMP jest zabierany wszystkim bytom przy wywolaniu tej funkcji
#Teleportuj wszystkich OBSERWATOROW tak aby patrzyli sie tylem do wykonawcy funkcji (obserwowanego)
tag @e[tag=LOS_SEE_TMP] remove LOS_SEE_TMP
execute as @e[tag=LOS_OBSERVER_TMP] facing entity @s feet positioned as @s run teleport @s ~ ~ ~ facing ^ ^ ^100
execute as @e[tag=LOS_OBSERVER_TMP] at @s run teleport @s ~ ~ ~ ~ 0
 

scoreboard players reset * distance
execute as @e[tag=LOS_OBSERVER_TMP] rotated as @s run function rpg:ai/util/pathfinding/test_connection/start_loop
scoreboard players reset @e[tag=LOS_OBSERVER_TMP,tag=!LOS_SEE_TMP] distance
tag @e[tag=LOS_OBSERVER_TMP] remove LOS_OBSERVER_TMP

#say @e[tag=LOS_SEE_TMP]