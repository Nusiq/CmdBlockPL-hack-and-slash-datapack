title @a times 30 100 30
execute if entity @e[tag=hitdetection1,scores={health=0}] run title @a[tag=player1] title [{"translate":"You have died!"}]
execute if entity @e[tag=hitdetection2,scores={health=0}] run title @a[tag=player2] title [{"translate":"You have died!"}]
execute if entity @e[tag=hitdetection3,scores={health=0}] run title @a[tag=player3] title [{"translate":"You have died!"}]
execute if entity @e[tag=hitdetection4,scores={health=0}] run title @a[tag=player4] title [{"translate":"You have died!"}]
execute if entity @e[tag=hitdetection1,scores={health=0}] run title @a[tag=player1] subtitle [{"translate":"Team lives left"},{"text":": "},{"score":{"name":"lives","objective":"var"}}]
execute if entity @e[tag=hitdetection2,scores={health=0}] run title @a[tag=player2] subtitle [{"translate":"Team lives left"},{"text":": "},{"score":{"name":"lives","objective":"var"}}]
execute if entity @e[tag=hitdetection3,scores={health=0}] run title @a[tag=player3] subtitle [{"translate":"Team lives left"},{"text":": "},{"score":{"name":"lives","objective":"var"}}]
execute if entity @e[tag=hitdetection4,scores={health=0}] run title @a[tag=player4] subtitle [{"translate":"Team lives left"},{"text":": "},{"score":{"name":"lives","objective":"var"}}]
scoreboard players set @e[tag=hitdetection1,scores={health=0}] health 100
scoreboard players set @e[tag=hitdetection2,scores={health=0}] health 100 
scoreboard players set @e[tag=hitdetection3,scores={health=0}] health 100 
scoreboard players set @e[tag=hitdetection4,scores={health=0}] health 100 
tellraw @a [{"translate":"One of the heroes is dead!"},{"text":"\n"},{"translate":"Team lives left"},{"text":": "},{"score":{"name":"lives","objective":"var"}}]