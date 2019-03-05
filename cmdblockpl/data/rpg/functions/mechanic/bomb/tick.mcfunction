kill @s[scores={bomb_countdown=..0}]
scoreboard players remove @s bomb_countdown 1
execute at @s[scores={bomb_countdown=1}] run function rpg:mechanic/bomb/explode
particle smoke ~ ~1 ~ 0.1 0.1 0.1 0.001 1 force