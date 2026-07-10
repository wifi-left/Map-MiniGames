scoreboard players set blaze.score.add.a board 0
scoreboard players set blaze.score.add.b board 0
execute in killerworld positioned 202 -49 240 run function minecraft:blaze/point_detect
execute in killerworld positioned 61 -19 369 run function minecraft:blaze/point_detect
execute in killerworld positioned 80 -40 450 run function minecraft:blaze/point_detect
execute in killerworld positioned 196 -38 501 run function minecraft:blaze/point_detect
execute in killerworld positioned -80 -39 507 run function minecraft:blaze/point_detect
execute in killerworld positioned -73 -39 236 run function minecraft:blaze/point_detect
execute in killerworld positioned 69 -39 277 run function minecraft:blaze/point_detect
scoreboard players operation blaze.score.a board += blaze.score.add.a board
scoreboard players operation blaze.score.b board += blaze.score.add.b board
