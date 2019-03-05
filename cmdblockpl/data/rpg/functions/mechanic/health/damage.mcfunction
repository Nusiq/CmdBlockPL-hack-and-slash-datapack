scoreboard players operation @s damageTaken -= @s var_armor
scoreboard players set @s[scores={damageTaken=..0}] damageTaken 1
scoreboard players operation @s health -= @s damageTaken