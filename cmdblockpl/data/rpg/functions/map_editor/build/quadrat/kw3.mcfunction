#clear stone
fill ~-1 ~-1 ~-1 ~1 ~-5 ~1 air replace stone

#barrior for concrete
fill ~-1 ~ ~-1 ~1 ~ ~1 barrier replace #rpg:grading

#grading
fill ~-5 ~ ~-5 ~5 ~ ~5 end_stone_bricks replace black_concrete
fill ~-4 ~ ~-4 ~4 ~ ~4 purpur_block replace end_stone_bricks
fill ~-3 ~ ~-3 ~3 ~ ~3 purpur_pillar replace purpur_block
fill ~-2 ~ ~-2 ~2 ~ ~2 stone replace purpur_pillar

#barrier wall
fill ~-1 ~1 ~-1 ~1 ~6 ~1 air replace nether_bricks
fill ~-1 ~1 ~-1 ~1 ~1 ~1 air replace barrier