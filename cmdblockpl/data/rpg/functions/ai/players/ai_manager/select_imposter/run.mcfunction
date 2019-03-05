tag @s[tag=player1] add PLAYER_1_TMP
tag @s[tag=player2] add PLAYER_2_TMP
tag @s[tag=player3] add PLAYER_3_TMP
tag @s[tag=player4] add PLAYER_4_TMP

tag @s[tag=player1] remove player1
tag @s[tag=player2] remove player2
tag @s[tag=player3] remove player3
tag @s[tag=player4] remove player4

execute if entity @s[tag=PLAYER_1_TMP] run function rpg:ai/players/ai_manager/select_imposter/try2
execute if entity @s[tag=PLAYER_2_TMP] run function rpg:ai/players/ai_manager/select_imposter/try3
execute if entity @s[tag=PLAYER_3_TMP] run function rpg:ai/players/ai_manager/select_imposter/try4
execute if entity @s[tag=PLAYER_4_TMP] run function rpg:ai/players/ai_manager/select_imposter/try1

tag @s remove PLAYER_1_TMP
tag @s remove PLAYER_2_TMP
tag @s remove PLAYER_3_TMP
tag @s remove PLAYER_4_TMP

function rpg:ai/players/ai_manager/select_imposter/eq