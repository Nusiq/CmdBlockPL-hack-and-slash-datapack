execute unless entity @a[tag=player3] run tag @s add player3
execute unless entity @s[tag=player3] unless entity @s[tag=PLAYER_3_TMP] run function rpg:ai/players/ai_manager/select_imposter/try4