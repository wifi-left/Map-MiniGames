execute in killerworld positioned 202 -49 240 run setblock ~ ~ ~ glass
execute in killerworld positioned 61 -19 369 run setblock ~ ~ ~ glass
execute in killerworld positioned 80 -40 450 run setblock ~ ~ ~ glass
execute in killerworld positioned 196 -38 501 run setblock ~ ~ ~ glass
execute in killerworld positioned -80 -39 507 run setblock ~ ~ ~ glass
execute in killerworld positioned -73 -39 236 run setblock ~ ~ ~ glass
execute in killerworld positioned 69 -39 277 run setblock ~ ~ ~ glass
scoreboard players reset * blaze.coin
execute if score blaze.mode state matches 2..3 run execute in killerworld positioned 202 -49 240 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode state matches 2..3 run execute in killerworld positioned 61 -19 369 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode state matches 3 run execute in killerworld positioned 61 -19 369 run setblock ~ ~ ~ glass
execute if score blaze.mode state matches 2..3 run execute in killerworld positioned 80 -40 450 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode state matches 2..3 run execute in killerworld positioned 196 -38 501 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode state matches 2..3 run execute in killerworld positioned -80 -39 507 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode state matches 2..3 run execute in killerworld positioned -73 -39 236 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode state matches 2..3 run execute in killerworld positioned 69 -39 277 run setblock ~ ~ ~ gray_wool

execute in killerworld positioned 202 -48 240 run setblock ~ ~ ~ air
execute in killerworld positioned 61 -18 369 run setblock ~ ~ ~ air
execute in killerworld positioned 80 -39 450 run setblock ~ ~ ~ air
execute in killerworld positioned 196 -37 501 run setblock ~ ~ ~ air
execute in killerworld positioned -80 -38 507 run setblock ~ ~ ~ air
execute in killerworld positioned -73 -38 236 run setblock ~ ~ ~ air
execute in killerworld positioned 69 -38 277 run setblock ~ ~ ~ air

team modify blaze.team.a prefix [{text:"[燎]",color:gold},' ',{text:"队伍A",color:blue},' ',{text:"|",color:"dark_gray"},' ']
team modify blaze.team.b prefix [{text:"[燎]",color:gold},' ',{text:"队伍B",color:red},' ',{text:"|",color:"dark_gray"},' ']

execute in killerworld run function minecraft:blaze/start_after_reset
scoreboard players set blaze.score.a board 0
scoreboard players set blaze.score.b board 0