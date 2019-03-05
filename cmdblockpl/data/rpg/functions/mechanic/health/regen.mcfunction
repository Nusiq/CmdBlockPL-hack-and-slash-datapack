scoreboard players add @s regen_cooldown 0
scoreboard players remove @s[scores={regen_cooldown=0..}] regen_cooldown 1
scoreboard players add @s[scores={regen_cooldown=..0}] health 1
scoreboard players operation @s[scores={regen_cooldown=..0},tag=hitdetection1] regen_cooldown = mage var_regenspeed
scoreboard players operation @s[scores={regen_cooldown=..0},tag=hitdetection2] regen_cooldown = gunner var_regenspeed
scoreboard players operation @s[scores={regen_cooldown=..0},tag=hitdetection3] regen_cooldown = tank var_regenspeed
scoreboard players operation @s[scores={regen_cooldown=..0},tag=hitdetection4] regen_cooldown = bard var_regenspeed