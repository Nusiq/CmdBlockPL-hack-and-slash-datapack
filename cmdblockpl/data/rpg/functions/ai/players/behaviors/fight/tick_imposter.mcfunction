#Tryb walki wylacza sie jezeli w poblizu nie ma przeciwnika
# fight -> idle
execute unless entity @e[tag=enemy,distance=..6] run function rpg:ai/players/behaviors/idle/start


#1 Mage
execute if entity @s[tag=imposter1] run function rpg:ai/players/behaviors/fight/mage/tick
#2 Gunner 
execute if entity @s[tag=imposter2] run function rpg:ai/players/behaviors/fight/gunner/tick
#3 Paladin
execute if entity @s[tag=imposter3] run function rpg:ai/players/behaviors/fight/paladin/tick
#4 Bard
execute if entity @s[tag=imposter4] run function rpg:ai/players/behaviors/fight/bard/tick