scoreboard players set @s RANDOM_MAX 5
function util:random/run


tag @s remove IMPOSTER_RANDOM_MOVE_WAIT
execute if entity @s[scores={RANDOMIZER=0}] run tp @s ~ ~ ~ ~45 0
execute if entity @s[scores={RANDOMIZER=1}] run tp @s ~ ~ ~ ~-45 0
execute if entity @s[scores={RANDOMIZER=2}] run tp @s ~ ~ ~ ~90 0
execute if entity @s[scores={RANDOMIZER=3}] run tp @s ~ ~ ~ ~-90 0
execute if entity @s[scores={RANDOMIZER=4}] run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,tag=imposter,tag=AI]
