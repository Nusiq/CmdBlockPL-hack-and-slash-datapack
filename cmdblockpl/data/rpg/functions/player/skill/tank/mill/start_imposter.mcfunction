scoreboard players set @s millCounter 10
playsound minecraft:block.anvil.destroy master @a ~ ~ ~ 1 2

tag @s add cooldown3
scoreboard players operation @s cooldown3 = tank var_cooldown3