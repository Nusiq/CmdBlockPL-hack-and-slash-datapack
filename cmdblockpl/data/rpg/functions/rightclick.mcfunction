scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:0}}}] carrotdamage 0
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:1}}}] carrotdamage 1
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2}}}] carrotdamage 2
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3}}}] carrotdamage 3
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:4}}}] carrotdamage 4
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:5}}}] carrotdamage 5
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:6}}}] carrotdamage 6
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:7}}}] carrotdamage 7
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:8}}}] carrotdamage 8
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:9}}}] carrotdamage 9
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:10}}}] carrotdamage 10
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:11}}}] carrotdamage 11
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:12}}}] carrotdamage 12
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:13}}}] carrotdamage 13
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:14}}}] carrotdamage 14
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:15}}}] carrotdamage 15
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:16}}}] carrotdamage 16
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:17}}}] carrotdamage 17
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:18}}}] carrotdamage 18
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:19}}}] carrotdamage 19
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:20}}}] carrotdamage 20
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:21}}}] carrotdamage 21
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:22}}}] carrotdamage 22
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:23}}}] carrotdamage 23
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:24}}}] carrotdamage 24
scoreboard players set @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Damage:25}}}] carrotdamage 25
# mage 0 - 6
execute as @s[scores={carrotdamage=0},tag=player1] run function rpg:player/skill/mage/generic/start
execute as @s[scores={carrotdamage=1},tag=player1] run function rpg:player/skill/mage/fireball/start
execute as @s[scores={carrotdamage=2},tag=player1] run function rpg:player/skill/mage/flamethrower/start
execute as @s[scores={carrotdamage=3},tag=player1] run function rpg:player/skill/mage/meteor/start
execute as @s[scores={carrotdamage=4},tag=player1] run function rpg:player/skill/mage/flare/start
execute as @s[scores={carrotdamage=5},tag=player1] run function rpg:player/skill/mage/cloud/start
# gunner 6 - 11
execute as @s[scores={carrotdamage=6},tag=player2] run function rpg:player/skill/gunner/generic/start
execute as @s[scores={carrotdamage=7},tag=player2] run function rpg:player/skill/gunner/turret/start
execute as @s[scores={carrotdamage=8},tag=player2] run function rpg:player/skill/gunner/covering_fire/start
execute as @s[scores={carrotdamage=9},tag=player2] run function rpg:player/skill/gunner/sniper/start
execute as @s[scores={carrotdamage=10},tag=player2] run function rpg:player/skill/gunner/bomb/start
execute as @s[scores={carrotdamage=11},tag=player2] at @s rotated as @s run function rpg:player/skill/gunner/mortar/start
# tank 12 - 17
execute as @s[scores={carrotdamage=12},tag=player3] run function rpg:player/skill/tank/generic/start
execute as @s[scores={carrotdamage=13},tag=player3] run function rpg:player/skill/tank/push/start
execute as @s[scores={carrotdamage=14},tag=player3] run function rpg:player/skill/tank/charge/start
execute as @s[scores={carrotdamage=15},tag=player3] run function rpg:player/skill/tank/mill/start
execute as @s[scores={carrotdamage=16},tag=player3] run function rpg:player/skill/tank/ground/start
execute as @s[scores={carrotdamage=17},tag=player3] run function rpg:player/skill/tank/taunt/start
# bard 18 - 23
execute as @s[scores={carrotdamage=18},tag=player4] run function rpg:player/skill/bard/generic/start
execute as @s[scores={carrotdamage=19},tag=player4] run function rpg:player/skill/bard/conga/start
execute as @s[scores={carrotdamage=20},tag=player4] run function rpg:player/skill/bard/heal/start
execute as @s[scores={carrotdamage=21},tag=player4] run function rpg:player/skill/bard/dmg_buff/start
execute as @s[scores={carrotdamage=22},tag=player4] run function rpg:player/skill/bard/soundwave/start
execute as @s[scores={carrotdamage=23},tag=player4] run function rpg:player/skill/bard/
# technical slots
execute as @s[scores={carrotdamage=24}] run function rpg:ai/players/ai_manager/select_imposter/run
execute as @s[scores={carrotdamage=25}] at @s rotated as @s run function rpg:map_editor/execute_at_block
scoreboard players set @s rightclick 0
scoreboard players set @s carrotdamage 0