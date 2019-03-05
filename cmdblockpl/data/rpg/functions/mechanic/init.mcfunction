scoreboard objectives add bomb_countdown dummy
scoreboard objectives add stunCounter dummy

scoreboard objectives add congaTimer dummy

scoreboard objectives add health dummy
scoreboard objectives add damageTaken dummy
scoreboard objectives add regen_cooldown dummy

#Scoreboardy z grupy parabola sa wykorzystywane glownie przez mortar
scoreboard objectives add parabolaCounter dummy
scoreboard players set 2 parabolaCounter 2
scoreboard objectives add parabolaGravity dummy
scoreboard players set 1G parabolaGravity 50
scoreboard objectives add parabolaPosTMP dummy

scoreboard objectives add borderMinPosX dummy
scoreboard objectives add borderMinPosZ dummy
scoreboard objectives add borderMaxPosX dummy
scoreboard objectives add borderMaxPosZ dummy


scoreboard objectives add runStepLimit dummy

bossbar add player1 {"selector":"@e[tag=player1]"}
bossbar add player2 {"selector":"@e[tag=player2]"}
bossbar add player3 {"selector":"@e[tag=player3]"}
bossbar add player4 {"selector":"@e[tag=player4]"}
bossbar set minecraft:player1 color red
bossbar set minecraft:player2 color red
bossbar set minecraft:player3 color red
bossbar set minecraft:player4 color red
execute store result bossbar minecraft:player1 max run scoreboard players get mage var_maxhealth
execute store result bossbar minecraft:player2 max run scoreboard players get gunner var_maxhealth
execute store result bossbar minecraft:player3 max run scoreboard players get tank var_maxhealth
execute store result bossbar minecraft:player4 max run scoreboard players get bard var_maxhealth