#clear stone
execute if block ~ ~-4 ~ air run fill ~ ~-5 ~ ~ ~-5 ~1 air replace stone
execute if block ~ ~-3 ~ air run fill ~ ~-4 ~ ~ ~-4 ~1 air replace stone
execute if block ~ ~-2 ~ air run fill ~ ~-3 ~ ~ ~-3 ~1 air replace stone
execute if block ~ ~-1 ~ air run fill ~ ~-2 ~ ~ ~-2 ~1 air replace stone
fill ~ ~-1 ~ ~ ~-1 ~ air replace stone

#barrior for concrete
fill ~ ~ ~ ~ ~ ~ barrier replace #rpg:grading

#grading
fill ~-4 ~ ~-4 ~5 ~ ~5 end_stone_bricks replace black_concrete
fill ~-3 ~ ~-3 ~4 ~ ~4 purpur_block replace end_stone_bricks
fill ~-2 ~ ~-2 ~3 ~ ~3 purpur_pillar replace purpur_block
fill ~-1 ~ ~-1 ~2 ~ ~2 stone replace purpur_pillar

#barrier wall
fill ~ ~1 ~ ~ ~6 ~1 air replace nether_bricks
fill ~ ~1 ~ ~ ~1 ~1 air replace barrier