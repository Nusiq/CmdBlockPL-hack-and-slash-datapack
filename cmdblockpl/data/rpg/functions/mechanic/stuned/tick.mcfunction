scoreboard players remove @s stunCounter 1
effect give @s slowness 1 127 true
particle minecraft:effect ~ ~1 ~ 0 0 0 0 1 force
tag @s[scores={stunCounter=..0}] remove stuned