scoreboard players add @s sniperLoop 1
function rpg:mechanic/sniperbullet/player
particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[scores={sniperLoop=..300}] unless block ~ ~ ~ #util:solid positioned ^ ^ ^0.1 run function rpg:player/skill/gunner/sniper/loop
scoreboard players set @s[scores={sniperLoop=300..}] sniperLoop 0