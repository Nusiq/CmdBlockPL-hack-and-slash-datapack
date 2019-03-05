scoreboard players remove @s runStepLimit 1
scoreboard players set @s RANDOM_MAX 4
function util:random/run

#Jesli limit tp nie wyczerpany to kontynuuj
execute positioned ~1 ~ ~ if entity @s[scores={RANDOMIZER=0,runStepLimit=1..}] run function rpg:mechanic/random_tp/loop
execute positioned ~-1 ~ ~ if entity @s[scores={RANDOMIZER=1,runStepLimit=1..}] run function rpg:mechanic/random_tp/loop
execute positioned ~ ~ ~1 if entity @s[scores={RANDOMIZER=2,runStepLimit=1..}] run function rpg:mechanic/random_tp/loop
execute positioned ~ ~ ~-1 if entity @s[scores={RANDOMIZER=3,runStepLimit=1..}] run function rpg:mechanic/random_tp/loop


#Jesli runStepLimit=0 to sprawdz czy tp jest ok
execute if block ~ ~ ~ #rpg:transparent if entity @s[scores={runStepLimit=0}] run teleport ~ ~ ~
execute if block ~ ~ ~ #rpg:transparent if entity @s[scores={runStepLimit=0}] run scoreboard players set @s runStepLimit -1

