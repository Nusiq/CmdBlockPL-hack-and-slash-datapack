execute unless entity @a[tag=player1] run tag @s add player1
execute unless entity @s[tag=player1] unless entity @s[tag=PLAYER_1_TMP] run function rpg:ai/players/ai_manager/select_imposter/try2