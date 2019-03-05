execute at @e[tag=imposter1,tag=AI,limit=1] run tp @e[tag=player1] ~ ~6 ~
execute if entity @e[tag=player1] run tag @e[tag=imposter1] remove AI
execute unless entity @e[tag=player1] run tag @e[tag=imposter1] add AI


execute at @e[tag=imposter2,tag=AI,limit=1] run tp @e[tag=player2] ~ ~6 ~
execute if entity @e[tag=player2] run tag @e[tag=imposter2] remove AI
execute unless entity @e[tag=player2] run tag @e[tag=imposter2] add AI

execute at @e[tag=imposter3,tag=AI,limit=1] run tp @e[tag=player3] ~ ~6 ~
execute if entity @e[tag=player3] run tag @e[tag=imposter3] remove AI
execute unless entity @e[tag=player3] run tag @e[tag=imposter3] add AI

execute at @e[tag=imposter4,tag=AI,limit=1] run tp @e[tag=player4] ~ ~6 ~
execute if entity @e[tag=player4] run tag @e[tag=imposter4] remove AI
execute unless entity @e[tag=player4] run tag @e[tag=imposter4] add AI

