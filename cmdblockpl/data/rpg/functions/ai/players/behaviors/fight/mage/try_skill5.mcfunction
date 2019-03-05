#execute if entity @s[scores={RANDOMIZER=0}] run tp @s ~ ~ ~ facing entity @e[tag=enemy,limit=1,sort=nearest]
execute if entity @s[scores={RANDOMIZER=0}] run function rpg:player/skill/mage/cloud/start_imposter
scoreboard players remove @s RANDOMIZER 1

#0 Basic
#1 Fireball
#2 Flamethrower
#3 Metheor
#4 Flare
#5 UNKNOWN