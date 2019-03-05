summon armor_stand ~ ~-0.6 ~ {DisabledSlots:2039583,Fire:32767s,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["bomb","bomb_init","SCARY"],ShowArms:0,NoBasePlate:1,ArmorItems:[{},{},{},{id:player_head,Damage:3,Count:1b,tag:{SkullOwner:{Id:"95097d9a-db9a-46ee-a181-7746150dc41f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWIyMGZmMTczYmQxN2IyYzRmMmViMjFmM2M0YjQzODQxYTE0YjMxZGZiZmQzNTRhM2JlYzgyNjNhZjU2MmIifX19"}]}}}}]}
summon armor_stand ~ ~1 ~ {NoGravity:1,CustomName:"5",CustomNameVisible:1,Tags:["bomb_counter","bomb_counter_init"],Small:0b,Marker:1b,Invisible:1b,Invulnerable:1b}
scoreboard players set @e[tag=bomb_init] bomb_countdown 100
scoreboard players set @e[tag=bomb_counter_init] bomb_countdown 100
tag @e[tag=bomb_init] remove bomb_init
tag @e[tag=bomb_counter_init] remove bomb_counter_init
playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 0.1

#tag @s add cooldown4
scoreboard players operation @s cooldown4 = gunner var_cooldown4 

