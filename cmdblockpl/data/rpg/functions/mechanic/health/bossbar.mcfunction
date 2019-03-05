bossbar set minecraft:player1 players @a[tag=bossbar_visible]
bossbar set minecraft:player2 players @a[tag=bossbar_visible]
bossbar set minecraft:player3 players @a[tag=bossbar_visible]
bossbar set minecraft:player4 players @a[tag=bossbar_visible]
#z jakiegos powodu trzebo tu updatowac, zeby zalapal :/
execute unless entity @a[tag=player1] run bossbar set minecraft:player1 name [{"translate":"Mage"},{"text":" (AI)"}]
execute unless entity @a[tag=player2] run bossbar set minecraft:player2 name [{"translate":"Gunner"},{"text":" (AI)"}]
execute unless entity @a[tag=player3] run bossbar set minecraft:player3 name [{"translate":"Paladin"},{"text":" (AI)"}]
execute unless entity @a[tag=player4] run bossbar set minecraft:player4 name [{"translate":"Bard"},{"text":" (AI)"}]
execute as @a[tag=player1] run bossbar set minecraft:player1 name [{"translate":"Mage"},{"text":" ("},{"selector":"@e[tag=player1]"},{"text":")"}]
execute as @a[tag=player2] run bossbar set minecraft:player2 name [{"translate":"Gunner"},{"text":" ("},{"selector":"@e[tag=player2]"},{"text":")"}]
execute as @a[tag=player3] run bossbar set minecraft:player3 name [{"translate":"Paladin"},{"text":" ("},{"selector":"@e[tag=player3]"},{"text":")"}]
execute as @a[tag=player4] run bossbar set minecraft:player4 name [{"translate":"Bard"},{"text":" ("},{"selector":"@e[tag=player4]"},{"text":")"}]
execute store result bossbar minecraft:player1 value run scoreboard players get @e[limit=1,tag=hitdetection1] health
execute store result bossbar minecraft:player2 value run scoreboard players get @e[limit=1,tag=hitdetection2] health
execute store result bossbar minecraft:player3 value run scoreboard players get @e[limit=1,tag=hitdetection3] health
execute store result bossbar minecraft:player4 value run scoreboard players get @e[limit=1,tag=hitdetection4] health