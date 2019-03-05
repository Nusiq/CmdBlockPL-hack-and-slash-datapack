playsound entity.firework.twinkle master @a ~ ~ ~ 2 2
particle minecraft:block diamond_block ~ ~ ~ 0.05 0.05 0.05 1 1 force @a
particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0.1 10 force

execute if block ~ ~0.5 ~ #util:solid run kill @s

execute positioned ~ ~6 ~ run effect give @a[tag=player,distance=..1] minecraft:slowness 5 127

teleport @s ^ ^ ^0.3



