execute unless entity @a[tag=player2] run tag @s add player2
execute unless entity @s[tag=player2] unless entity @s[tag=PLAYER_2_TMP] run function rpg:ai/players/ai_manager/select_imposter/try3