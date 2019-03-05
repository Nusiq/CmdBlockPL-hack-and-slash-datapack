summon chicken ~ ~ ~ {Motion:[0.0,0.1,0.0],Tags:["enemy","angrycucco","angrycucco_init"],IsChickenJockey:1,EggLayTime:1000000,Age:-1000000,Attributes:[{Name:generic.maxHealth,Base:20}],Health:20.0f,PersistenceRequired:1,Passengers:[{id:"zombie",Tags:["chicken_jockey"],IsVillager:0,IsBaby:1,Attributes:[{Name:zombie.spawnReinforcements,Base:0.0F}],Invulnerable:1,PersistenceRequired:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}]}
scoreboard players set @e[tag=angrycucco_init] health 20
tag @e[tag=angrycucco_init] remove angrycucco_init
playsound minecraft:entity.chicken.hurt master @a ~ ~ ~ 2 1.5
tp @s ~ ~-1000 ~
tag @s remove cucco