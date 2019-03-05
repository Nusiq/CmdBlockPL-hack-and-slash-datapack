execute if entity @e[tag=enemy,distance=..5] run teleport @s ^ ^ ^0.1 facing entity @e[tag=enemy,sort=nearest,limit=1]
execute unless entity @e[tag=enemy,distance=..5] run teleport @s ^ ^ ^0.1 
particle minecraft:flame ~ ~0.4 ~ 0.01 0.01 0.01 0.02 3 force
#playsound minecraft:block.fire.ambient master @a
execute unless block ~ ~ ~ #rpg:transparent run function rpg:player/skill/mage/flare/explode
execute if entity @e[tag=enemy,distance=..0.5] run function rpg:player/skill/mage/flare/explode