#clear stone
fill ~ ~-1 ~ ~ ~-5 ~ air replace stone

#barrior for concrete
fill ~ ~ ~ ~ ~ ~ barrier replace #rpg:grading

#grading
fill ~-4 ~ ~-4 ~4 ~ ~4 end_stone_bricks replace black_concrete
fill ~-3 ~ ~-3 ~3 ~ ~3 purpur_block replace end_stone_bricks
fill ~-2 ~ ~-2 ~2 ~ ~2 purpur_pillar replace purpur_block
fill ~-1 ~ ~-1 ~1 ~ ~1 stone replace purpur_pillar
#barrier wall
fill ~ ~1 ~ ~ ~6 ~ air replace nether_bricks
fill ~ ~1 ~ ~ ~1 ~ air replace barrier