execute store result score @s rotX run data get entity @s Rotation[0] 1000000
execute store result score @s rotY run data get entity @s Rotation[1] 1000000
execute if entity @s[scores={rotX=..-1}] run scoreboard players add @s rotX 360000000