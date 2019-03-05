scoreboard players operation @e[tag=PATH] tableIndex = @s pathId
scoreboard players reset @e[tag=PATH] tableIO
execute as @e[tag=PATH] run function util:table/set
function util:table/reset_all