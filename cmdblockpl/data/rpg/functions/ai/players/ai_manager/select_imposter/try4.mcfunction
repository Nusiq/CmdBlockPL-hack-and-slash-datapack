execute unless entity @a[tag=player4] run tag @s add player4
execute unless entity @s[tag=player4] unless entity @s[tag=PLAYER_4_TMP] run function rpg:ai/players/ai_manager/select_imposter/try1