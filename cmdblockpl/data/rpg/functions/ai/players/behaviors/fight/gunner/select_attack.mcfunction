scoreboard players set @s playerAiTimer 10

scoreboard players set @s RANDOMIZER -1
scoreboard players set @s RANDOM_MAX 1



tag @s remove SKILL_0
tag @s remove SKILL_1
tag @s remove SKILL_2
tag @s remove SKILL_3
tag @s remove SKILL_4
tag @s remove SKILL_5

#function rpg:ai/players/behaviors/sit_rep

tag @s[scores={cooldown0=..0}] add SKILL_0
execute unless entity @e[tag=TURRET_ACTIVE] run tag @s[scores={cooldown1=..0}] add SKILL_1
execute unless entity @e[tag=SCARY,distance=..4] run tag @s[scores={cooldown2=..0},tag=!LOW_HEALTH] add SKILL_2
tag @s[scores={cooldown3=..0}] add SKILL_3
tag @s[scores={cooldown4=..0}] add SKILL_4
tag @s[scores={cooldown5=..0}] add SKILL_5

scoreboard players add @s[tag=SKILL_0] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_1] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_2] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_3] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_4] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_5] RANDOM_MAX 1

execute if entity @s[scores={RANDOM_MAX=1..}] run function util:random/run



execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_0] run function rpg:ai/players/behaviors/fight/gunner/try_skill0
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_1] run function rpg:ai/players/behaviors/fight/gunner/try_skill1
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_2] run function rpg:ai/players/behaviors/fight/gunner/try_skill2
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_3] run function rpg:ai/players/behaviors/fight/gunner/try_skill3
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_4] run function rpg:ai/players/behaviors/fight/gunner/try_skill4
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_5] run function rpg:ai/players/behaviors/fight/gunner/try_skill5

#0 Basic
#1 Turret
#2 Covering fire
#3 Mine
#4 Bomb
#5 Mortar