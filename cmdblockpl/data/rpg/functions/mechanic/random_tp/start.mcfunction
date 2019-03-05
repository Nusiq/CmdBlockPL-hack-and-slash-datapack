scoreboard players set @s runStepLimit 30

scoreboard players set @s RANDOM_MAX 4
function util:random


playsound entity.endermen.teleport master @a ~ ~ ~ 1 0.5 0
particle minecraft:dragon_breath ~ ~ ~ 0.05 0.05 0.05 0.04 30 force

execute positioned ~ ~0.1 ~ align xyz positioned ~1.5 ~ ~0.5 if entity @s[scores={RANDOMIZER=0}] run function rpg:mechanic/random_tp/loop
execute positioned ~ ~0.1 ~ align xyz positioned ~-1.5 ~ ~0.5 if entity @s[scores={RANDOMIZER=1}] run function rpg:mechanic/random_tp/loop
execute positioned ~ ~0.1 ~ align xyz positioned ~0.5 ~ ~1.5 if entity @s[scores={RANDOMIZER=2}] run function rpg:mechanic/random_tp/loop
execute positioned ~ ~0.1 ~ align xyz positioned ~0.5 ~ ~-1.5 if entity @s[scores={RANDOMIZER=3}] run function rpg:mechanic/random_tp/loop

execute at @s run playsound entity.endermen.teleport master @a ~ ~ ~ 1 1.5 0
execute at @s run particle portal ~ ~ ~ 0.1 0.1 0.1 0.8 50 force

scoreboard players set @s mobSorcererState 950