teleport @s ~ ~ ~ facing entity @e[tag=SCARY,limit=1,sort=nearest] feet
execute at @s run teleport @s ~ ~ ~ ~180 0
execute at @s run function rpg:ai/util/movement/walk_forward
execute at @s run function rpg:ai/util/movement/walk_forward

scoreboard players set @s[tag=FAIL_TMP] playerAiState 4120




