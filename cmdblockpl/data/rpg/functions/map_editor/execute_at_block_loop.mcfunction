execute positioned ^ ^ ^0.3 run particle smoke ^ ^ ^ 0 0 0 0 3 force @s
execute positioned ^ ^ ^0.3 unless block ^ ^ ^ air run function rpg:map_editor/execute_at_block_controller
execute positioned ^ ^ ^0.3 if block ^ ^ ^ air run function rpg:map_editor/execute_at_block_loop