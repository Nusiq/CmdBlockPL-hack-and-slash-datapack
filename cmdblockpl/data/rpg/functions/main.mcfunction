title @a[tag=COMMAND_LIMIT] title {"text":"Osiagnieto limit komend","color":"red"}
tag @a[tag=DEBUG] add COMMAND_LIMIT


#Border (size 45)
function rpg:mechanic/border/tick


#Podazanie trasa
#RUN_FOLLOW_PATH_TICK - byl przydzielany w:
#rpg\functions\ai\util\pathfinding\follow\run.mcfunction
#i juz sie z niego nie korzysta
#execute as @e[tag=RUN_FOLLOW_PATH_TICK] at @s run function rpg:ai/util/pathfinding/follow/tick
scoreboard players remove @e[scores={pathSearchDelay=1..}] pathSearchDelay 1

#updating cooldown
execute as @e[tag=imposter] run function rpg:mechanic/cooldown/update

#updating health scoreboard
execute as @e[tag=enemy] run function rpg:mechanic/mobhealth/update
execute as @a[tag=player] at @s rotated as @s run function rpg:mechanic/health/update

#summoning important entities if there are not any
execute unless entity @e[tag=imposter1] at @e[tag=player1] run function rpg:player/imposter/summon_imposter_1
execute unless entity @e[tag=imposter2] at @e[tag=player2] run function rpg:player/imposter/summon_imposter_2
execute unless entity @e[tag=imposter3] at @e[tag=player3] run function rpg:player/imposter/summon_imposter_3
execute unless entity @e[tag=imposter4] at @e[tag=player4] run function rpg:player/imposter/summon_imposter_4
execute unless entity @e[tag=hitdetection1] at @e[tag=player1] run function rpg:player/imposter/summon_hitdetection_1
execute unless entity @e[tag=hitdetection2] at @e[tag=player2] run function rpg:player/imposter/summon_hitdetection_2
execute unless entity @e[tag=hitdetection3] at @e[tag=player3] run function rpg:player/imposter/summon_hitdetection_3
execute unless entity @e[tag=hitdetection4] at @e[tag=player4] run function rpg:player/imposter/summon_hitdetection_4

#processing imposters
execute if entity @e[tag=player] run function rpg:ai/players/ai_manager/tick
execute if entity @e[tag=player] run function rpg:ai/players/tick
execute as @a[tag=player] run function rpg:player/imposter

#effects for players
#effect give @a[tag=player] minecraft:invisibility 1 127 true
#effect give @a[tag=player] minecraft:resistance 1 127 true
#effect give @a[tag=player,scores={hunger=4..}] minecraft:hunger 1 127 true
#effect give @a[tag=player,scores={hunger=..2}] minecraft:saturation 1 0 true
#effect give @a[tag=player] minecraft:jump_boost 1 128 true
#execute as @a[tag=player,x_rotation=-90..55] at @s run teleport @s ~ ~ ~ ~ 56

#processing mobs AI
execute as @e[tag=MOB_SORCERER] at @s rotated as @s run function rpg:ai/mobs/sorcerer/tick
#execute as @e[tag=cucco,scores={health=..19},tag=!aggrocucco] at @s as @e[tag=cucco,distance=0..10] at @s run tag @s add aggrocucco
#execute as @e[tag=aggrocucco] run function rpg:ai/mobs/cucco/change
execute as @e[tag=leaper,tag=!stuned,tag=!sleeping] at @s rotated as @s run function rpg:ai/mobs/leaper/tick
execute as @e[tag=shooter,tag=!stuned,tag=!sleeping] at @s rotated as @s if entity @e[tag=imposter,distance=..8] run function rpg:ai/mobs/shooter/tick

#rightclick detection
execute as @a[scores={rightclick=1}] at @s rotated as @s run function rpg:rightclick

#processing skills
execute as @e[tag=meteor] at @s rotated as @s run function rpg:player/skill/mage/meteor/tick
execute as @e[tag=flare] at @s rotated as @s run function rpg:player/skill/mage/flare/tick
execute as @e[tag=mage_cloud] at @s rotated as @s run function rpg:player/skill/mage/cloud/tick
execute as @e[tag=mage_generic] at @s rotated as @s run function rpg:player/skill/mage/generic/tick
execute as @e[tag=flamethrower] at @s rotated as @s run function rpg:player/skill/mage/flamethrower/tick2
execute as @e[tag=imposter1,scores={throwerCounter=0..}] at @s run function rpg:player/skill/mage/flamethrower/tick
function rpg:mechanic/conga/tick
function rpg:mechanic/formation/tick

execute as @e[tag=gunner_turret] at @s run teleport @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=enemy,distance=..8] feet
execute as @e[tag=gunner_turret] at @s[scores={turret_cooldown=..0}] run function rpg:player/skill/gunner/turret/tick
scoreboard players remove @e[tag=gunner_turret,scores={turret_cooldown=0..}] turret_cooldown 1


execute as @e[tag=imposter2,tag=covering_fire] at @s run function rpg:player/skill/gunner/covering_fire/tick

execute as @e[scores={millCounter=1..}] at @s rotated as @s run function rpg:player/skill/tank/mill/tick

#processing mechanics
execute as @e[tag=bullet] at @s rotated as @s run function rpg:mechanic/bullet/tick
execute as @e[tag=MAGE_MAGIC_MISSLE] at @s rotated as @s run function rpg:mechanic/magic_missile/tick
execute as @e[tag=ELECTRIC_PULSE] at @s rotated as @s run function rpg:mechanic/electric_pulse/tick
execute as @e[tag=mine] at @s rotated as @s run function rpg:mechanic/mine/tick
execute as @e[tag=bomb] at @s rotated as @s run function rpg:mechanic/bomb/tick
execute as @e[tag=bomb_counter] at @s rotated as @s run function rpg:mechanic/bomb/counter
execute as @e[tag=MORTAR_PROJECTILE] at @s rotated as @s run function rpg:mechanic/mortar/tick 
execute as @e[tag=stuned] at @s rotated as @s run function rpg:mechanic/stuned/tick
execute if entity @e[tag=sleeping,limit=1] as @e[tag=sleeping] at @s run function rpg:mechanic/sleep/tick
execute if entity @e[tag=buffed] as @e[tag=buffed] run function rpg:mechanic/dmgbuff/tick

#killing dead enemies
execute as @e[tag=enemy] if entity @s[scores={health=..0}] run function rpg:mobdeath/kill
teleport @e[tag=chicken_jockey,nbt={OnGround:1b}] ~ ~-1000 ~

execute as @e[tag=wolfman,nbt={OnGround:1b}] run scoreboard players set @s health 20
execute as @e[tag=wolfman,nbt={OnGround:1b}] run data merge entity @s {AbsorptionAmount:20,Tags:["enemy"],Invulnerable:0,Silent:0}

#updating health
execute as @a[tag=player] at @s rotated as @s run function rpg:mechanic/health/tick
execute as @e[tag=enemy] at @s rotated as @s run function rpg:mechanic/mobhealth/tick

#processing player bossbars - tu teoretycznie nie wszystko musi sie wykonywac co tick
execute as @p[tag=player] run function rpg:mechanic/health/bossbar

#scoreboards reset
scoreboard players set @a rightclick 0

#ticking circle rays
execute if entity @e[tag=slam_ray,limit=1] as @e[tag=slam_ray,scores={slam_ray_life=1..}] at @s rotated as @s run function util:circle/ray_tick

#ticking note fan rays
execute if entity @e[tag=note_fan_ray,limit=1] as @e[tag=note_fan_ray] at @s rotated as @s run function rpg:mechanic/note_fan/tick

#ticking soundwave
execute if entity @e[tag=soundwave_marker,limit=1] as @e[tag=soundwave_marker] at @s rotated as @s run function rpg:mechanic/soundwave/tick




tag @a[tag=COMMAND_LIMIT] remove COMMAND_LIMIT