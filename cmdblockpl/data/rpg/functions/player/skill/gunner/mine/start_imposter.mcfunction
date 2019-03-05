execute store result score N_MINES var if entity @e[tag=mine]
execute if score N_MINES var matches 2.. run kill @e[tag=mine,limit=1,sort=furthest]
summon armor_stand ~ ~-1 ~ {DisabledSlots:2039583,Fire:32767s,NoGravity:0b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["mine","SCARY"],ShowArms:0,NoBasePlate:1,ArmorItems:[{},{},{},{id:player_head,Damage:3,Count:1b,tag:{SkullOwner:{Id:"a0c464c0-219a-4bf7-9d42-b96977b3d560",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRjMjg0YTRlOTc0MDA1ZWE4ZDFkNGQwNjc0ZWMwODk0ZWZkOGY2ZGQwMjQ4NjM5YTZjZmE5NGY4NTM4OCJ9fX0="}]}}}}]}
#tag @s add cooldown3
scoreboard players operation @s cooldown3 = gunner var_cooldown3 