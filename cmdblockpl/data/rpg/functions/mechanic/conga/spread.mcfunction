tag @e[tag=enemy,distance=..1,tag=!conga_immune] add conga_line_init
execute as @e[tag=conga_line_init] run data merge entity @s {NoAI:1b}
scoreboard players operation @e[tag=conga_line_init] congaTimer = bard var_conga
tag @e[tag=conga_line_init] add conga_line
tag @e[tag=conga_line_init] remove conga_line_init