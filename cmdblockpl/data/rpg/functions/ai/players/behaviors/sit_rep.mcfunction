execute store result score N_ENEMY_MELEE var if entity @e[tag=enemy,distance=..1.2]
execute store result score N_ENEMY_MID var if entity @e[tag=enemy,distance=..3]
execute store result score N_ENEMY_LONG var if entity @e[tag=enemy,distance=..7]

execute store result score N_ALLY_MELEE var if entity @e[tag=imposter,distance=..1.2]
execute store result score N_ALLY_MID var if entity @e[tag=imposter,distance=..3]
execute store result score N_ALLY_LONG var if entity @e[tag=imposter,distance=..7]

