scoreboard players set @s RANDOM_MAX 5
function util:random/run
tag @s[tag=zombie,scores={RANDOMIZER=0..3}] add stuned
scoreboard players operation @s stunCounter = tank var_stuntime 