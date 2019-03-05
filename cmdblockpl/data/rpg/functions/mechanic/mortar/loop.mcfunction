scoreboard players add @s parabolaCounter 1
#execute positioned ^ ^ ^0.3 run particle crit ~ ~ ~ 0 0 0 0 1 force @a
execute positioned ^ ^ ^0.3 unless entity @e[tag=CURSOR,distance=..0.5] run function rpg:mechanic/mortar/loop
