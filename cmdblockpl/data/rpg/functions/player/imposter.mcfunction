#tp imposter under the player
execute as @s[tag=player1] at @s run teleport @e[tag=imposter1,limit=1] ~ ~-6 ~ ~ 0
execute as @s[tag=player2] at @s run teleport @e[tag=imposter2,limit=1] ~ ~-6 ~ ~ 0
execute as @s[tag=player3] at @s run teleport @e[tag=imposter3,limit=1] ~ ~-6 ~ ~ 0
execute as @s[tag=player4] at @s run teleport @e[tag=imposter4,limit=1] ~ ~-6 ~ ~ 0

#tp villager to imposter
teleport @e[tag=hitdetection1] @e[tag=imposter1,limit=1]
teleport @e[tag=hitdetection2] @e[tag=imposter2,limit=1]
teleport @e[tag=hitdetection3] @e[tag=imposter3,limit=1]
teleport @e[tag=hitdetection4] @e[tag=imposter4,limit=1]

#processing hidden hitdetectors
scoreboard players remove @e[tag=hitdetection,scores={hidden=0..}] hidden 1
team join hidden @e[tag=hitdetection,scores={hidden=0..}]
team leave @e[tag=hitdetection,scores={hidden=0}]