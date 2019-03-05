execute store result score @s missleCounter run data get entity @s Age
tag @s add SELF_MAGIC_MISSLE
execute if block ~ ~0.5 ~ #util:solid run kill @s
execute unless entity @s[scores={missleCounter=20..}] run function rpg:mechanic/magic_missile/particle_unarmed
execute if entity @s[scores={missleCounter=20..}] facing entity @e[tag=!SELF_MAGIC_MISSLE,tag=hitdetection,sort=nearest,limit=1] feet run function rpg:mechanic/magic_missile/particle_armed
tag @s remove SELF_MAGIC_MISSLE