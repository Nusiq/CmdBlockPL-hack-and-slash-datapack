teleport @s ^ ^ ^0.4
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.05 8 force
particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.1 5 force
particle minecraft:dust 1 0 0 1 ^ ^ ^0.6 0.01 0.01 0.01 0.1 2 force
execute unless block ~ ~ ~ #rpg:transparent run function rpg:player/skill/mage/meteor/explode