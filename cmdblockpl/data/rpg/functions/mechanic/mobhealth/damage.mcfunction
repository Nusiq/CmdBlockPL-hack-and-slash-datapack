execute if entity @e[tag=buffed,tag=dealtdmg] run scoreboard players operation @s damageTaken += bard var_dmgbuff
scoreboard players operation @s damageTaken -= @s var_armor
scoreboard players set @s[scores={damageTaken=..0}] damageTaken 1
scoreboard players operation @s health -= @s damageTaken

tag @a[tag=dealtdmg] remove dealtdmg

execute at @s[tag=MOB_SORCERER] run function rpg:mobdamage/sorcerer
execute at @s[type=zombie] run function rpg:mobdamage/zombie
execute at @s[type=chicken] run function rpg:mobdamage/chicken
execute at @s[type=wolf] run function rpg:mobdamage/wolf
xp add @a[tag=player] 1 points