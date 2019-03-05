#clear stone
fill ~-1 ~-1 ~-1 ~2 ~-5 ~2 air replace stone

#barrior for concrete
fill ~-1 ~ ~-1 ~2 ~ ~2 barrier replace #rpg:grading

#grading
fill ~-5 ~ ~-5 ~6 ~ ~6 end_stone_bricks replace black_concrete
fill ~-4 ~ ~-4 ~5 ~ ~5 purpur_block replace end_stone_bricks
fill ~-3 ~ ~-3 ~4 ~ ~4 purpur_pillar replace purpur_block
fill ~-2 ~ ~-2 ~3 ~ ~3 stone replace purpur_pillar

#barrier wall
fill ~-1 ~1 ~-1 ~2 ~6 ~2 air replace nether_bricks
fill ~-1 ~1 ~-1 ~2 ~1 ~2 air replace barrier