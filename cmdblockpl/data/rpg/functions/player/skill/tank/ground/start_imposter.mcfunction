playsound minecraft:entity.generic.big_fall master @a ~ ~ ~ 1 0
playsound minecraft:entity.irongolem.death master @a ~ ~ ~ 1 1
function util:circle/slam 
execute if entity @e[distance=..2,tag=enemy] run tag @s add dealtdmg
execute as @e[distance=..2,tag=enemy] run scoreboard players operation @s damageTaken = tank var_shielddmg
execute as @e[distance=..2,tag=enemy] run function rpg:player/skill/tank/push/push
execute as @e[distance=..2,tag=enemy] run function rpg:mechanic/mobhealth/damage

tag @s add cooldown4
scoreboard players operation @s cooldown4 = tank var_cooldown4