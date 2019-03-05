execute positioned ^ ^ ^0.3 run particle smoke ^ ^ ^ 0 0 0 0 10 force @a
execute positioned ^ ^ ^0.3 as @e[tag=LOS_TARGET_TMP,distance=..2] run say widze cie
execute positioned ^ ^ ^0.3 unless entity @e[tag=LOS_TARGET_TMP,distance=..2] if block ^ ^ ^ air run function rpg:stealth_game/check_los_loop
