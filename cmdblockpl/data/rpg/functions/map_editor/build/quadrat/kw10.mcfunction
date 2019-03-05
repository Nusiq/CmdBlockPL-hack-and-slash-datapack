#clear stone
fill ~-4 ~-1 ~-4 ~5 ~-5 ~5 air replace stone

#barrior for concrete
fill ~-4 ~ ~-4 ~5 ~ ~5 barrier replace #rpg:grading

#grading
fill ~-8 ~ ~-8 ~9 ~ ~9 end_stone_bricks replace black_concrete
fill ~-7 ~ ~-7 ~8 ~ ~8 purpur_block replace end_stone_bricks
fill ~-6 ~ ~-6 ~7 ~ ~7 purpur_pillar replace purpur_block
fill ~-5 ~ ~-5 ~6 ~ ~6 stone replace purpur_pillar

#barrier wall
fill ~-4 ~1 ~-4 ~5 ~6 ~5 air replace nether_bricks
fill ~-4 ~1 ~-4 ~5 ~1 ~5 air replace barrier