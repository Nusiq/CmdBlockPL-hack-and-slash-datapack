#execute store result score N_CONGA var if entity @e[tag=conga_line]
#execute unless score CONGA_STATE var matches 1.. run scoreboard players operation CONGA_STATE var = N_CONGA var
#scoreboard players operation CURR_CONGA var = N_CONGA var

tag @e[tag=conga_start] remove conga_start
execute as @e[tag=conga_line] run function rpg:mechanic/conga/give_tag
execute as @e[tag=conga_line] at @s run function rpg:mechanic/conga/loop

scoreboard players remove CONGA_STATE var 1