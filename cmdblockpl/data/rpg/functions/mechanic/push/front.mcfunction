function rpg:mechanic/stuned/randomize
tag @s add dealtdmg
scoreboard players operation @s damageTaken = tank var_shielddmg
function rpg:mechanic/mobhealth/damage
summon area_effect_cloud ~ ~ ~ {Tags:["vectorcheckercuzynot"]}
execute as @e[tag=vectorcheckercuzynot,limit=1] at @s rotated as @e[tag=pusher,limit=1] positioned ^ ^ ^0.5 facing entity @e[tag=pusher,limit=1] feet rotated ~180 ~ run function util:get_direction/run
execute store result entity @s Motion[0] double 0.0000008 run scoreboard players get @e[tag=vectorcheckercuzynot,limit=1] dirX
execute store result entity @s Motion[1] double 0.3 run scoreboard players get 1 var
execute store result entity @s Motion[2] double 0.0000008 run scoreboard players get @e[tag=vectorcheckercuzynot,limit=1] dirZ
kill @e[tag=vectorcheckercuzynot]