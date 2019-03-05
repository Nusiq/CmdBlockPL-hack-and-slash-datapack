scoreboard players remove lives var 1
execute if score lives var >= 1 var run function rpg:player/death/life_lost
execute if score lives var <= 0 var run function rpg:player/death/end_game