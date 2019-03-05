kill @e[tag=MORTAR_PROJECTILE_INIT]
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1000,Tags:["MORTAR_PROJECTILE","MORTAR_PROJECTILE_INIT","SCARY"]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["mortar_projectile"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:coal_block",Count:1b}]}
#execute store result entity @e[tag=MORTAR_PROJECTILE_INIT,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0] 
#execute store result entity @e[tag=MORTAR_PROJECTILE_INIT,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
execute as @e[tag=MORTAR_PROJECTILE_INIT] at @s rotated as @s run function rpg:mechanic/mortar/init_mortar_projectile



