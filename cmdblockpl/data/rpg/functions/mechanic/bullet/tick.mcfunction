teleport @s ^ ^ ^0.8
execute as @s[tag=enemy_bullet] run function rpg:mechanic/bullet/enemy
execute as @s[tag=!enemy_bullet] run function rpg:mechanic/bullet/player
execute at @s positioned ~ ~ ~ if block ~ ~ ~ #util:solid run kill @s