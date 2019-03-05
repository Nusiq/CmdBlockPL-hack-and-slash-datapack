scoreboard players set @s sleepTimer 0
#effect clear @s minecraft:slowness
data merge entity @s {NoAI:0b}
tag @s remove sleeping