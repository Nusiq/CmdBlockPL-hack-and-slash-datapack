scoreboard players remove @s sleepTimer 1
#effect give @s slowness 1 127 true
#particle minecraft:entity_effect ~ ~2 ~ 0.6 0 1 1 0 force
particle minecraft:dust 1 0 1 1 ~ ~2 ~ 0 0 0 0 1
execute if entity @s[scores={sleepTimer=1}] run function rpg:mechanic/sleep/wake

# dodać obudzenie się po otrzymaniu obrażeń

execute if score @s health < @s tmp_health run function rpg:mechanic/sleep/wake
scoreboard players operation @s tmp_health = @s health