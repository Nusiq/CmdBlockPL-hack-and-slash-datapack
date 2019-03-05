#dalem 3, zeby nie bylo widac napisu w momencie wybuchu
kill @s[scores={bomb_countdown=..3}]
scoreboard players remove @s bomb_countdown 1
data merge entity @s[scores={bomb_countdown=80}] {CustomName:"4"}
data merge entity @s[scores={bomb_countdown=60}] {CustomName:"3"}
data merge entity @s[scores={bomb_countdown=40}] {CustomName:"2"}
data merge entity @s[scores={bomb_countdown=20}] {CustomName:"1"}