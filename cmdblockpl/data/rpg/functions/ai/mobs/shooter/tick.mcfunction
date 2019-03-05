tag @e[distance=..8,tag=imposter] add LOS_OBSERVER_TMP
function util:check_line_of_sight/run
execute if entity @e[tag=LOS_SEE_TMP,distance=..8] run scoreboard players add @s mobShooterState 1
execute unless entity @e[tag=LOS_SEE_TMP,distance=..8] run scoreboard players set @s mobShooterState 0
execute if entity @e[tag=LOS_SEE_TMP,distance=3..5] run effect give @s slowness 1 127 true
execute at @s[scores={mobShooterState=35}] if entity @e[tag=LOS_SEE_TMP,distance=3..] run function rpg:ai/mobs/shooter/shoot
execute at @s[scores={mobShooterState=40}] if entity @e[tag=LOS_SEE_TMP,distance=3..] run function rpg:ai/mobs/shooter/shoot
execute at @s[scores={mobShooterState=45}] if entity @e[tag=LOS_SEE_TMP,distance=3..] run function rpg:ai/mobs/shooter/shoot
scoreboard players set @s[scores={mobShooterState=50}] mobShooterState 0