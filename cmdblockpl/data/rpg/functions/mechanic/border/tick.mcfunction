execute unless entity @e[tag=BORDER_CENTER] at @a[limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["BORDER_CENTER"],Duration:2147483647,Age:-2147483648}
execute as @e[tag=BORDER_CENTER] at @s run function rpg:mechanic/border/try_set1
