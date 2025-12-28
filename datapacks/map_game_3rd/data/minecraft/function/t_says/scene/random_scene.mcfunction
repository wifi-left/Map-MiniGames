## T or not T
# 1 for T (不能); 2 for not T (需要)
execute store result score t_says.type board run random value 1..2
## scene
execute store result score t_says.scene board run random value 1..20
execute if score t_says.scene board matches 1 run data modify storage minecraft:temp t_says.msg set value ["跳下平台"]
execute if score t_says.scene board matches 2 run data modify storage minecraft:temp t_says.msg set value ["跳一跳"]
execute if score t_says.scene board matches 3 run data modify storage minecraft:temp t_says.msg set value ["别跳"]
execute if score t_says.scene board matches 4 run data modify storage minecraft:temp t_says.msg set value ["跑一跑"]
execute if score t_says.scene board matches 5 run data modify storage minecraft:temp t_says.msg set value ["不要动"]
execute if score t_says.scene board matches 6 run data modify storage minecraft:temp t_says.msg set value ["蹲下"]
execute if score t_says.scene board matches 7 run data modify storage minecraft:temp t_says.msg set value ["不要蹲下"]
execute if score t_says.scene board matches 8 run data modify storage minecraft:temp t_says.msg set value ["和玩家拥抱"]
execute if score t_says.scene board matches 9 run data modify storage minecraft:temp t_says.msg set value ["跑酷到终点（钻石块）"]
execute if score t_says.scene board matches 10 run data modify storage minecraft:temp t_says.msg set value ["合成：钻石剑"]
execute if score t_says.scene board matches 11 run data modify storage minecraft:temp t_says.msg set value ["合成：金剑"]
execute if score t_says.scene board matches 12 run data modify storage minecraft:temp t_says.msg set value ["合成：铁剑"]
execute if score t_says.scene board matches 13 run data modify storage minecraft:temp t_says.msg set value ["合成：木剑"]
execute if score t_says.scene board matches 14 run data modify storage minecraft:temp t_says.msg set value ["合成：石剑"]
execute if score t_says.scene board matches 15 run data modify storage minecraft:temp t_says.msg set value ["合成：木门"]
execute if score t_says.scene board matches 16 run data modify storage minecraft:temp t_says.msg set value ["合成：铁门"]
execute if score t_says.scene board matches 17 run data modify storage minecraft:temp t_says.msg set value ["合成：铁活版门"]
execute if score t_says.scene board matches 18 run data modify storage minecraft:temp t_says.msg set value ["合成：木活版门"]
execute if score t_says.scene board matches 19 run data modify storage minecraft:temp t_says.msg set value ["合成：箱子"]
execute if score t_says.scene board matches 20 run data modify storage minecraft:temp t_says.msg set value ["躲避箭雨"]