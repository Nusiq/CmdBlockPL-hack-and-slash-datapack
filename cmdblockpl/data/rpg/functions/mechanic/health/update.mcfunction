#updating health scoreboard
#hitdetection
execute as @e[limit=1,tag=hitdetection1] store result score @s health run data get entity @s AbsorptionAmount 1
execute as @e[limit=1,tag=hitdetection2] store result score @s health run data get entity @s AbsorptionAmount 1
execute as @e[limit=1,tag=hitdetection3] store result score @s health run data get entity @s AbsorptionAmount 1
execute as @e[limit=1,tag=hitdetection4] store result score @s health run data get entity @s AbsorptionAmount 1
#players - w sumie niepotrzebne
#scoreboard players operation @s[tag=player1] health = @e[limit=1,tag=hitdetection1] health
#scoreboard players operation @s[tag=player2] health = @e[limit=1,tag=hitdetection2] health
#scoreboard players operation @s[tag=player3] health = @e[limit=1,tag=hitdetection3] health
#scoreboard players operation @s[tag=player4] health = @e[limit=1,tag=hitdetection4] health