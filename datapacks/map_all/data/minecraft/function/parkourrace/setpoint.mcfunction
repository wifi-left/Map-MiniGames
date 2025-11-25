scoreboard players set park.tmp board 0
execute store result score park.tmp.x board run data get entity @s Pos[0]
execute store result score park.tmp.y board run data get entity @s Pos[1]
execute store result score park.tmp.z board run data get entity @s Pos[2]
execute if score @s park.x = park.tmp.x board if score @s park.y = park.tmp.y board if score @s park.z = park.tmp.z board run scoreboard players set park.tmp board 1
execute if score park.tmp board matches 1 run title @s actionbar ["\u00a7c[你的记录点已经设置过了]"]
execute if score park.tmp board matches 0 run function minecraft:parkourrace/plset
