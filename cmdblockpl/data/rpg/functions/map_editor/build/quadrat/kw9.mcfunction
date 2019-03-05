#clear stone
fill ~-3 ~-1 ~-3 ~4 ~-5 ~4 air replace stone

#barrior for concrete
fill ~-3 ~ ~-3 ~4 ~ ~4 barrier replace #rpg:grading

#grading
fill ~-7 ~ ~-7 ~8 ~ ~8 end_stone_bricks replace black_concrete
fill ~-6 ~ ~-6 ~7 ~ ~7 purpur_block replace end_stone_bricks
fill ~-5 ~ ~-5 ~6 ~ ~6 purpur_pillar replace purpur_block
fill ~-4 ~ ~-4 ~5 ~ ~5 stone replace purpur_pillar

#barrier wall
fill ~-3 ~1 ~-3 ~4 ~6 ~4 air replace nether_bricks
fill ~-3 ~1 ~-3 ~4 ~1 ~4 air replace barrier