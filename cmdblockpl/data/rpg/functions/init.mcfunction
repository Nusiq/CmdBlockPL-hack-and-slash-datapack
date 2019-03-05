scoreboard objectives add DEBUG dummy

scoreboard objectives add rightclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add hunger food 
scoreboard objectives add carrotdamage dummy
scoreboard objectives add missleCounter dummy

scoreboard objectives add cooldown0 dummy
scoreboard objectives add cooldown1 dummy
scoreboard objectives add cooldown2 dummy
scoreboard objectives add cooldown3 dummy
scoreboard objectives add cooldown4 dummy
scoreboard objectives add cooldown5 dummy

function util:init
function rpg:map_editor/init
function rpg:ai/init
function rpg:player/skill/init
function rpg:mechanic/init

#variables connected to skills
function rpg:stats/init

#variables
scoreboard objectives add var dummy
scoreboard players set 1 var 1
scoreboard players set 2 var 2
scoreboard players set 10 var 10
scoreboard players set 100 var 100
scoreboard players set 1000 var 1000