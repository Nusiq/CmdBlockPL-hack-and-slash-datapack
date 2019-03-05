execute rotated ~ 0 if block ^ ^ ^1 air run teleport @s ^ ^ ^0.5
particle minecraft:sweep_attack ^ ^0.2 ^0.5 0 0 0 0 1 force
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 0.8
execute positioned ^ ^ ^0.5 if entity @e[distance=..1,tag=enemy] run tag @s add dealtdmg
execute positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run scoreboard players operation @s damageTaken = tank var_shielddmg
execute positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run function rpg:player/skill/tank/push/push
execute positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run function rpg:mechanic/mobhealth/damage

tag @s add cooldown1
scoreboard players operation @s cooldown1 = tank var_cooldown1