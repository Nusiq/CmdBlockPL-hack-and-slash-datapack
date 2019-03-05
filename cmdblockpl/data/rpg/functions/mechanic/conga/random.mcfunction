scoreboard players set @s RANDOM_MAX 11
function util:random/run
execute if entity @s[scores={RANDOMIZER=0}] rotated ~-25 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=1}] rotated ~-20 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=2}] rotated ~-15 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=3}] rotated ~-10 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=4}] rotated ~-5 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=5}] rotated ~0 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=6}] rotated ~5 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=7}] rotated ~10 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=8}] rotated ~15 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=9}] rotated ~20 ~ run function rpg:ai/util/movement/walk_forward
execute if entity @s[scores={RANDOMIZER=10}] rotated ~25 ~ run function rpg:ai/util/movement/walk_forward
teleport @s[tag=FAIL_TMP] ~ ~ ~ ~180 ~