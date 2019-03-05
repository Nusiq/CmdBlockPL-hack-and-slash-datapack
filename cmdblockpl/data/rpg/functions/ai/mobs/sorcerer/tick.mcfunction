particle portal ~ ~0.1 ~ 0.04 0.05 0.04 0 3 force @a
particle minecraft:enchant ~ ~0.6 ~ 0.2 0.2 0.2 0.5 2 force @a



#0-999 idle
execute if entity @s[scores={mobSorcererState=0..999}] run function rpg:ai/mobs/sorcerer/idle
execute if entity @s[scores={mobSorcererState=999}] run scoreboard players remove @s mobSorcererState 1000


#1000-1999 cast spell MIS (missle)
execute if entity @s[scores={mobSorcererState=1000..1999}] run function rpg:ai/mobs/sorcerer/mis
execute if entity @s[scores={mobSorcererState=1999}] run scoreboard players remove @s mobSorcererState 1000

#2000-2999 cast spell LSR (laser)
execute if entity @s[scores={mobSorcererState=2000..2999}] run function rpg:ai/mobs/sorcerer/lsr
execute if entity @s[scores={mobSorcererState=2999}] run scoreboard players remove @s mobSorcererState 1000


#3000-3999 cast spell EPL (electric pulse)
execute if entity @s[scores={mobSorcererState=3000..3999}] run function rpg:ai/mobs/sorcerer/epl
execute if entity @s[scores={mobSorcererState=3999}] run scoreboard players remove @s mobSorcererState 1000

#4000-4999 cast spell RUN (tactical retreat)
execute if entity @s[scores={mobSorcererState=4000..4999}] run function rpg:ai/mobs/sorcerer/run
execute if entity @s[scores={mobSorcererState=4999}] run scoreboard players remove @s mobSorcererState 1000

execute if entity @e[tag=imposter,distance=..2] run function rpg:mechanic/random_tp/start
tag @s[tag=stuned] remove stuned

#i++
scoreboard players add @s mobSorcererState 1