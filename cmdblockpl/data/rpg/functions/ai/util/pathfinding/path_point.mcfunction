execute align xz run summon area_effect_cloud ~0.5 ~ ~0.5 {CustomNameVisible:1b,CustomName:"\"PATH\"",Duration:2000000000,Tags:[PATH,PATH_INIT]}
execute as @e[tag=PATH_INIT] run function rpg:ai/util/pathfinding/init_path_point
