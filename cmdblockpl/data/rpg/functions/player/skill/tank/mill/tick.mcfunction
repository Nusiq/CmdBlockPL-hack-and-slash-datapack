scoreboard players remove @s millCounter 1
teleport @s ~ ~ ~ ~36 ~
particle minecraft:sweep_attack ^ ^0.2 ^0.5 0 0 0 0 1 force
execute positioned ^ ^ ^0.5 if entity @e[distance=..1,tag=enemy] run tag @s add dealtdmg
execute positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run scoreboard players operation @s damageTaken = tank var_hammerdmg
execute positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run function rpg:player/skill/tank/push/push
execute positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run function rpg:mechanic/mobhealth/damage

execute rotated as @s as @a[tag=player3] positioned as @s run tp @s ~ ~ ~ ~ 90