execute as @e[tag=imposter3] at @s run particle minecraft:sweep_attack ^ ^0.2 ^0.5 0 0 0 0 1 force
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 1
tag @s add dealtdmg
execute as @e[tag=imposter3] at @s positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run scoreboard players operation @s damageTaken = tank var_hammerdmg
execute as @e[tag=imposter3] at @s positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run function rpg:mechanic/mobhealth/damage