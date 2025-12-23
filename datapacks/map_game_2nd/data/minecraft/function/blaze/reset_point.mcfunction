execute in killerworld positioned 202 -49 240 run setblock ~ ~ ~ glass
execute in killerworld positioned 61 -19 369 run setblock ~ ~ ~ glass
execute in killerworld positioned 80 -40 450 run setblock ~ ~ ~ glass
execute in killerworld positioned 196 -38 501 run setblock ~ ~ ~ glass
execute in killerworld positioned -80 -39 507 run setblock ~ ~ ~ glass
execute in killerworld positioned -73 -39 236 run setblock ~ ~ ~ glass
execute in killerworld positioned 69 -39 277 run setblock ~ ~ ~ glass
execute if score blaze.mode board matches 2..3 run execute in killerworld positioned 202 -49 240 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode board matches 2..3 run execute in killerworld positioned 61 -19 369 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode board matches 3 run execute in killerworld positioned 61 -19 369 run setblock ~ ~ ~ glass
execute if score blaze.mode board matches 2..3 run execute in killerworld positioned 80 -40 450 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode board matches 2..3 run execute in killerworld positioned 196 -38 501 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode board matches 2..3 run execute in killerworld positioned -80 -39 507 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode board matches 2..3 run execute in killerworld positioned -73 -39 236 run setblock ~ ~ ~ gray_wool
execute if score blaze.mode board matches 2..3 run execute in killerworld positioned 69 -39 277 run setblock ~ ~ ~ gray_wool

execute in killerworld positioned 202 -48 240 run setblock ~ ~ ~ air
execute in killerworld positioned 61 -18 369 run setblock ~ ~ ~ air
execute in killerworld positioned 80 -39 450 run setblock ~ ~ ~ air
execute in killerworld positioned 196 -37 501 run setblock ~ ~ ~ air
execute in killerworld positioned -80 -38 507 run setblock ~ ~ ~ air
execute in killerworld positioned -73 -38 236 run setblock ~ ~ ~ air
execute in killerworld positioned 69 -38 277 run setblock ~ ~ ~ air

execute in killerworld positioned 202 -48 240 run kill @e[type=item,distance=..200]
execute in killerworld positioned 61 -18 369 run kill @e[type=item,distance=..200]
execute in killerworld positioned 80 -39 450 run kill @e[type=item,distance=..200]
execute in killerworld positioned 196 -37 501 run kill @e[type=item,distance=..200]
execute in killerworld positioned -80 -38 507 run kill @e[type=item,distance=..200]
execute in killerworld positioned -73 -38 236 run kill @e[type=item,distance=..200]
execute in killerworld positioned 69 -38 277 run kill @e[type=item,distance=..200]

function blaze/reset_chests