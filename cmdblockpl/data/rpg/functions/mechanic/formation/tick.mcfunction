#execute store result score N_FORMATION var if entity @e[tag=formation_line]
#scoreboard players operation N_FORMATION var /= 2 var
scoreboard players set CURR_FORMATION var 0


tag @e[tag=formation_start] remove formation_start
execute as @e[tag=formation_line] run function rpg:mechanic/formation/give_tag
execute as @e[tag=formation_line] at @s run function rpg:mechanic/formation/loop

scoreboard players remove CONGA_STATE var 1