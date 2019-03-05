#Korzystajac nalezy najpierw zaznaczyc byt bedacy znacznikiem trasy tagiem PATH_FINDER_TARGET
#a nastepnie wywolac ta funkcje na bucie ktory ma do niego dojsc
tag @s add SAVE_PATH
kill @e[scores={pathId=255}]
kill @e[tag=PATH_INIT]
kill @e[tag=PATH_FINDER_POINT]

execute align xz run summon area_effect_cloud ~0.5 ~ ~0.5 {CustomNameVisible:1b,CustomName:"\"PATH\"",Duration:2000000000,Tags:[PATH_FINDER_POINT,PATH,PATH_INIT,PATH_SOURCE]}
execute as @e[tag=PATH_INIT] run function rpg:ai/util/pathfinding/init_path_finder_point
execute as @e[tag=PATH_FINDER_TARGET] run function rpg:ai/util/pathfinding/search/run

function rpg:ai/util/pathfinding/follow/run
function rpg:ai/util/pathfinding/follow/get_next_step
tag @e[tag=PATH_FINDER_TARGET] remove PATH_FINDER_TARGET
execute as @e[tag=PATH_FINDER_POINT] run function rpg:ai/util/pathfinding/disconnect
kill @e[tag=PATH_FINDER_POINT]