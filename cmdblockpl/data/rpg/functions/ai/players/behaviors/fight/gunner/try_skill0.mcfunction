#execute if entity @s[scores={RANDOMIZER=0}] run tp @s ~ ~ ~ facing entity @e[tag=enemy,limit=1,sort=nearest]
execute if entity @s[scores={RANDOMIZER=0}] run function rpg:player/skill/gunner/generic/start_imposter
scoreboard players remove @s RANDOMIZER 1



