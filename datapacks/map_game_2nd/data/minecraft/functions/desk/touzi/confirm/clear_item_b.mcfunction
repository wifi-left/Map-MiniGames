scoreboard players set tmp.type board 0
scoreboard players set tmp.type1 board 0
execute store result score tmp.type board run data get entity @e[type=armor_stand,tag=desk.touzi.place,limit=1,sort=nearest] HandItems[0].tag.touzi
execute store result score tmp.type1 board run data get entity @e[type=armor_stand,tag=desk.touzi.place,limit=1,sort=nearest] HandItems[0].tag.touzit

execute if score tmp.type1 board matches 0 run scoreboard players remove touzit.b.number tick 1

execute if score touzit.b.touzi1 tick matches 1 if score tmp.type1 board = touzit.b.touzi1 board run scoreboard players remove touzit.b.touzi1 tick 1
execute unless score touzit.b.touzi1 tick matches 1 unless score tmp.type1 board = touzit.b.touzi1 board if score tmp.type1 board = touzit.b.touzi2 board run scoreboard players remove touzit.b.touzi2 tick 1

execute unless score tmp.type board matches 0 run data merge entity @e[type=armor_stand,tag=desk.touzi.place,limit=1,sort=nearest] {HandItems:[{},{}]}
execute unless score tmp.type board matches 0 run item replace entity @e[sort=nearest,limit=1,type=item_frame,distance=0..5] container.0 with air