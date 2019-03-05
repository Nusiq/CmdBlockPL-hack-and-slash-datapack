#clear stone
fill ~-2 ~-1 ~-2 ~3 ~-5 ~3 air replace stone

#barrior for concrete
fill ~-2 ~ ~-2 ~3 ~ ~3 barrier replace #rpg:grading

#grading
fill ~-6 ~ ~-6 ~7 ~ ~7 end_stone_bricks replace black_concrete
fill ~-5 ~ ~-5 ~6 ~ ~6 purpur_block replace end_stone_bricks
fill ~-4 ~ ~-4 ~5 ~ ~5 purpur_pillar replace purpur_block
fill ~-3 ~ ~-3 ~4 ~ ~4 stone replace purpur_pillar

#barrier wall
fill ~-2 ~1 ~-2 ~3 ~6 ~3 air replace nether_bricks
fill ~-2 ~1 ~-2 ~3 ~1 ~3 air replace barrier