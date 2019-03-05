#detecting death of the player
execute as @e[tag=hitdetection,scores={health=0}] run function rpg:player/death/death
#additional health changes
execute as @e[tag=hitdetection1,scores={health=1..}] if score @s health < mage var_maxregen run function rpg:mechanic/health/regen
execute as @e[tag=hitdetection2,scores={health=1..}] if score @s health < gunner var_maxregen run function rpg:mechanic/health/regen 
execute as @e[tag=hitdetection3,scores={health=1..}] if score @s health < tank var_maxregen run function rpg:mechanic/health/regen 
execute as @e[tag=hitdetection4,scores={health=1..}] if score @s health < bard var_maxregen run function rpg:mechanic/health/regen  
#storing scoreboard on health tag
#hitdetection
execute as @e[limit=1,tag=hitdetection1] store result entity @s AbsorptionAmount float 1 run scoreboard players get @s health 
execute as @e[limit=1,tag=hitdetection2] store result entity @s AbsorptionAmount float 1 run scoreboard players get @s health 
execute as @e[limit=1,tag=hitdetection3] store result entity @s AbsorptionAmount float 1 run scoreboard players get @s health 
execute as @e[limit=1,tag=hitdetection4] store result entity @s AbsorptionAmount float 1 run scoreboard players get @s health 
#player - w sumie dla gracza jest niepotrzebne
#scoreboard players operation @s[tag=player1] health = @e[limit=1,tag=hitdetection1] health
#scoreboard players operation @s[tag=player2] health = @e[limit=1,tag=hitdetection2] health
#scoreboard players operation @s[tag=player3] health = @e[limit=1,tag=hitdetection3] health
#scoreboard players operation @s[tag=player4] health = @e[limit=1,tag=hitdetection4] health
#processing bossbars - przeniesione do main
#execute as @s[tag=bossbar_visible] run function rpg:mechanic/health/bossbar
#execute as @s[tag=!bossbar_visible] run function rpg:mechanic/health/bossbar_hide
#taging witrh LOW_HEALTH
execute as @e[tag=hitdetection,scores={health=20..}] run tag @s remove LOW_HEALTH
execute as @e[tag=hitdetection,scores={health=..19}] run tag @s add LOW_HEALTH
#taging with MAX_HEALTH
execute as @e[tag=hitdetectinon1] if score @s health = mage var_maxhealth run tag @s add MAX_HEALTH
execute as @e[tag=hitdetectinon2] if score @s health = gunner var_maxhealth run tag @s add MAX_HEALTH
execute as @e[tag=hitdetectinon3] if score @s health = tank var_maxhealth run tag @s add MAX_HEALTH
execute as @e[tag=hitdetectinon4] if score @s health = bard var_maxhealth run tag @s add MAX_HEALTH