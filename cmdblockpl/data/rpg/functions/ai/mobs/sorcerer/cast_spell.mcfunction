scoreboard players set @s RANDOM_MAX 3
function util:random/run
#1000-1999 cast spell MIS (missle)
#2000-2999 cast spell LSR (laser)
#3000-3999 cast spell EPL (electric pulse)
scoreboard players set @s[scores={RANDOMIZER=0}] mobSorcererState 1000
scoreboard players set @s[scores={RANDOMIZER=1}] mobSorcererState 2000
scoreboard players set @s[scores={RANDOMIZER=2}] mobSorcererState 3000
