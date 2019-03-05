tag @e[tag=conga_line] remove conga_line
tag @e[tag=conga_start] remove conga_start
tag @e[tag=enemy,distance=..5,tag=!conga_immune] add conga_line
execute as @e[tag=conga_line] run data merge entity @s {NoAI:1b}
scoreboard players set congastate var 0
scoreboard players operation @e[tag=conga_line] congaTimer = bard var_conga