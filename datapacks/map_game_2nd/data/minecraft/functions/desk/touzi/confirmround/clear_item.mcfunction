scoreboard players set tmp.type board 0
execute store result score tmp.type board run data get entity @e[type=armor_stand,tag=desk.touzi.place,tag=touzi.b,limit=1,sort=nearest] HandItems[0].tag.touzi
data merge entity @s {HandItems:[{},{}]}
item replace entity @e[sort=nearest,limit=1,type=item_frame] container.0 with air