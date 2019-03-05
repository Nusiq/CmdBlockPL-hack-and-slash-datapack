#charge
scoreboard players set @s chargeLoop 8
function rpg:player/skill/tank/charge/loop
#hit
execute positioned as @s run function rpg:player/skill/tank/charge/imposter_hit

execute positioned as @s positioned ~ ~6 ~ run teleport @a[tag=player3] ~ ~ ~

tag @s add cooldown2
scoreboard players operation @s cooldown2 = tank var_cooldown2