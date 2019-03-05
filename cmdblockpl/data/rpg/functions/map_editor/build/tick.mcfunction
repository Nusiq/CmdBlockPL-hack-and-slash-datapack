#ray init
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_ingot"}]}] at @s anchored eyes positioned ^ ^ ^0.8 anchored feet run function rpg:map_editor/build/ray_tick
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:slime_ball"}]}] at @s anchored eyes positioned ^ ^ ^0.8 anchored feet run function rpg:map_editor/build/ray_tick_sm