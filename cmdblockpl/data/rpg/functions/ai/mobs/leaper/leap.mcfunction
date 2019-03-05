function util:get_direction/run
teleport @s ~ ~0.3 ~
execute store result entity @s Motion[1] double 0.3 run scoreboard players get 1 var
execute store result entity @s Motion[0] double 0.0009 run scoreboard players get @s dirX
execute store result entity @s Motion[2] double 0.0009 run scoreboard players get @s dirZ
playsound minecraft:entity.vex.charge master @a ~ ~ ~ 1 2