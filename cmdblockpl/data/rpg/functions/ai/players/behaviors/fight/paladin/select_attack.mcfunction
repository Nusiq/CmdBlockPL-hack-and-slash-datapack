scoreboard players set @s playerAiTimer 10

scoreboard players set @s RANDOMIZER -1
scoreboard players set @s RANDOM_MAX 1



tag @s remove SKILL_0
tag @s remove SKILL_1
tag @s remove SKILL_2
tag @s remove SKILL_3
tag @s remove SKILL_4
tag @s remove SKILL_5

function rpg:ai/players/behaviors/sit_rep




execute if score N_ENEMY_MELEE var matches 1.. run tag @s[scores={cooldown0=..0}] add SKILL_0
tag @s[scores={cooldown1=..0}] add SKILL_1
execute if score N_ENEMY_MID var matches 1.. run tag @s[scores={cooldown2=..0}] add SKILL_2
execute if score N_ENEMY_MELEE var matches 2.. run tag @s[scores={cooldown3=..0}] add SKILL_3
execute if score N_ENEMY_MID var matches 1.. run tag @s[scores={cooldown4=..0}] add SKILL_4
execute unless entity @e[tag=hitdetection3,tag=LOW_HEALTH] run tag @s[scores={cooldown5=..0}] add SKILL_5

scoreboard players add @s[tag=SKILL_0] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_1] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_2] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_3] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_4] RANDOM_MAX 1
scoreboard players add @s[tag=SKILL_5] RANDOM_MAX 1

execute if entity @s[scores={RANDOM_MAX=1..}] run function util:random/run



execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_0] run function rpg:ai/players/behaviors/fight/paladin/try_skill0
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_1] run function rpg:ai/players/behaviors/fight/paladin/try_skill1
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_2] run function rpg:ai/players/behaviors/fight/paladin/try_skill2
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_3] run function rpg:ai/players/behaviors/fight/paladin/try_skill3
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_4] run function rpg:ai/players/behaviors/fight/paladin/try_skill4
execute if entity @s[scores={RANDOMIZER=0..},tag=SKILL_5] run function rpg:ai/players/behaviors/fight/paladin/try_skill5

#0 generic +
#1 resistance -
#2 charge +
#3 mill +
#4 slam -
#5 taunt +