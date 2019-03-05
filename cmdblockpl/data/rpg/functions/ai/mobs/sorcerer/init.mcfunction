summon armor_stand ~ ~ ~ {AbsorptionAmount:300,Attributes:[{Name:generic.maxHealth,Base:100}],Health:100.0f,Tags:["MOB_SORCERER_INIT","MOB_SORCERER","enemy"],NoGravity:true,Invisible:true,ShowArms:1,Small:true,NoBasePlate:1,HandItems:[{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1,Unbreakable:1b,StoredEnchantments:[{lvl:5s,id:18s}]}},{}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15073535}}},{id:player_head,Count:1b,tag:{SkullOwner:{Id:"e9acbb93-d817-4a71-aa42-a52af141407e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDgyNmNkNTNmOWZjMzA4MDkyZjIzNGY5NDk4NmVkMjQzN2QzYjFmZGY2ODFhM2VjNmNjYmI1YWZjMWQ0YmFkYyJ9fX0="}]}}}}]}

scoreboard players set @e[tag=MOB_SORCERER_INIT] mobSorcererState 998
#0-999 idle
#1000-1999 cast spell MIS (missle)
#2000-2999 cast spell LSR (laser)
#3000-3999 cast spell RUN (tactical retreat)
#4000-4999 cast spell EPL (electric pulse)
tag @e[tag=MOB_SORCERER_INIT] remove MOB_SORCERER_INIT