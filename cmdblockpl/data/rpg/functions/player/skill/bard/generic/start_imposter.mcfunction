playsound minecraft:block.note_block.guitar master @a ~ ~ ~ 1 1
playsound minecraft:block.note_block.guitar master @a ~ ~ ~ 1 1.2
playsound minecraft:block.note_block.guitar master @a ~ ~ ~ 1 1.5
particle minecraft:sweep_attack ^ ^0.2 ^0.5 0 0 0 0 1 force
execute positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run scoreboard players operation @s damageTaken = bard var_lutedmg
execute positioned ^ ^ ^0.5 as @e[distance=..1,tag=enemy] run function rpg:mechanic/mobhealth/damage
execute unless entity @e[tag=player4] run teleport @s ~ ~ ~ facing entity @e[tag=enemy,limit=1,sort=nearest]
execute at @s function rpg:mechanic/note_fan/start

tag @s add dealtdmg

tag @s add cooldown0
scoreboard players operation @s cooldown0 = bard var_cooldown0