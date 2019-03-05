function rpg:mechanic/stuned/randomize
tag @s add dealtdmg
scoreboard players operation @s damageTaken = tank var_shielddmg
function rpg:mechanic/mobhealth/damage
execute at @s facing entity @e[tag=pusher,limit=1] feet rotated ~180 ~ run function util:get_direction/run
execute store result entity @s Motion[0] double 0.0000001 run scoreboard players get @s dirX
execute store result entity @s Motion[1] double 0.3 run scoreboard players get 1 var
execute store result entity @s Motion[2] double 0.0000001 run scoreboard players get @s dirZ