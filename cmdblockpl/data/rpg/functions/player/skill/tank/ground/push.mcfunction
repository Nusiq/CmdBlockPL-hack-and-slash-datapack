tag @s add stuned
scoreboard players operation @s stunCounter = tank var_stuntime 
execute at @s facing entity @e[tag=imposter3,limit=1] feet rotated ~180 ~ run function util:get_direction/run
execute store result entity @s Motion[0] double 0.003 run scoreboard players get @s dirX
execute store result entity @s Motion[1] double 1.0015 run scoreboard players get @s dirY
execute store result entity @s Motion[2] double 0.003 run scoreboard players get @s dirZ