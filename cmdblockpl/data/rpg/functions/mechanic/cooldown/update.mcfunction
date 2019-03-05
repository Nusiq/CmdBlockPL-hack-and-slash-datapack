scoreboard players remove @s[scores={cooldown0=0..}] cooldown0 1
scoreboard players remove @s[scores={cooldown1=0..}] cooldown1 1
scoreboard players remove @s[scores={cooldown2=0..}] cooldown2 1
scoreboard players remove @s[scores={cooldown3=0..}] cooldown3 1
scoreboard players remove @s[scores={cooldown4=0..}] cooldown4 1
scoreboard players remove @s[scores={cooldown5=0..}] cooldown5 1

execute as @a[tag=player1] if entity @e[tag=imposter1,scores={cooldown0=0}] run replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Damage:0,Unbreakable:1} 1 
execute as @a[tag=player1] if entity @e[tag=imposter1,scores={cooldown1=0}] run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Damage:1,Unbreakable:1} 1 
execute as @a[tag=player1] if entity @e[tag=imposter1,scores={cooldown2=0}] run replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Damage:2,Unbreakable:1} 1 
execute as @a[tag=player1] if entity @e[tag=imposter1,scores={cooldown3=0}] run replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Damage:3,Unbreakable:1} 1 
execute as @a[tag=player1] if entity @e[tag=imposter1,scores={cooldown4=0}] run replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{Damage:4,Unbreakable:1} 1 
execute as @a[tag=player1] if entity @e[tag=imposter1,scores={cooldown5=0}] run replaceitem entity @s hotbar.5 minecraft:carrot_on_a_stick{Damage:5,Unbreakable:1} 1 

execute as @a[tag=player2] if entity @e[tag=imposter2,scores={cooldown0=0}] run replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Damage:6,Unbreakable:1} 1 
execute as @a[tag=player2] if entity @e[tag=imposter2,scores={cooldown1=0}] run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Damage:7,Unbreakable:1} 1 
execute as @a[tag=player2] if entity @e[tag=imposter2,scores={cooldown2=0}] run replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Damage:8,Unbreakable:1} 1 
execute as @a[tag=player2] if entity @e[tag=imposter2,scores={cooldown3=0}] run replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Damage:9,Unbreakable:1} 1 
execute as @a[tag=player2] if entity @e[tag=imposter2,scores={cooldown4=0}] run replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{Damage:10,Unbreakable:1} 1 
execute as @a[tag=player2] if entity @e[tag=imposter2,scores={cooldown5=0}] run replaceitem entity @s hotbar.5 minecraft:carrot_on_a_stick{Damage:11,Unbreakable:1} 1 

execute as @a[tag=player3] if entity @e[tag=imposter3,scores={cooldown0=0}] run replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Damage:12,Unbreakable:1} 1 
execute as @a[tag=player3] if entity @e[tag=imposter3,scores={cooldown1=0}] run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Damage:13,Unbreakable:1} 1 
execute as @a[tag=player3] if entity @e[tag=imposter3,scores={cooldown2=0}] run replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Damage:14,Unbreakable:1} 1 
execute as @a[tag=player3] if entity @e[tag=imposter3,scores={cooldown3=0}] run replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Damage:15,Unbreakable:1} 1 
execute as @a[tag=player3] if entity @e[tag=imposter3,scores={cooldown4=0}] run replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{Damage:16,Unbreakable:1} 1 
execute as @a[tag=player3] if entity @e[tag=imposter3,scores={cooldown5=0}] run replaceitem entity @s hotbar.5 minecraft:carrot_on_a_stick{Damage:17,Unbreakable:1} 1 

execute as @a[tag=player4] if entity @e[tag=imposter4,scores={cooldown0=0}] run replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{Damage:18,Unbreakable:1} 1 
execute as @a[tag=player4] if entity @e[tag=imposter4,scores={cooldown1=0}] run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{Damage:19,Unbreakable:1} 1 
execute as @a[tag=player4] if entity @e[tag=imposter4,scores={cooldown2=0}] run replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick{Damage:20,Unbreakable:1} 1 
execute as @a[tag=player4] if entity @e[tag=imposter4,scores={cooldown3=0}] run replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{Damage:21,Unbreakable:1} 1 
execute as @a[tag=player4] if entity @e[tag=imposter4,scores={cooldown4=0}] run replaceitem entity @s hotbar.4 minecraft:carrot_on_a_stick{Damage:22,Unbreakable:1} 1 
execute as @a[tag=player4] if entity @e[tag=imposter4,scores={cooldown5=0}] run replaceitem entity @s hotbar.5 minecraft:carrot_on_a_stick{Damage:23,Unbreakable:1} 1 


#mam nadzieje ze to usuwanie tagow jest w odpowiednim miejscu 
#Bez znaczenia. Kasuje to ~Nusiq
#execute as @s[scores={cooldown0=0}] run tag @s remove cooldown0
#execute as @s[scores={cooldown1=0}] run tag @s remove cooldown1
#execute as @s[scores={cooldown2=0}] run tag @s remove cooldown2 
#execute as @s[scores={cooldown3=0}] run tag @s remove cooldown3
#execute as @s[scores={cooldown4=0}] run tag @s remove cooldown4 
#execute as @s[scores={cooldown5=0}] run tag @s remove cooldown5 