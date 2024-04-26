# execute if score boat.type board matches ..1 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位乘坐上\u00a7b冰船"]
# execute if score boat.type board matches 2 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位乘坐上\u00a7d猪"]
# execute if score boat.type board matches 3 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位乘坐上\u00a7c炽足兽"]
# execute if score boat.type board matches 4 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位准备\u00a76赛跑"]
# execute if score boat.type board matches 5 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位乘坐上\u00a7e马"]

# execute if score boat.type board matches ..1 run 
# execute if score boat.type board matches 2 run 
# execute if score boat.type board matches 3 run 
# execute if score boat.type board matches 4 run 
# execute if score boat.type board matches 5 run 
forceload add -32 88 -102 313
tag @a remove boat.notspawn

execute as @e[tag=boat.reset.structure] at @s run function boat/reset_marker

scoreboard players reset @e[tag=boat]
kill @e[tag=boat]
kill @e[type=marker,tag=boat.trap]
execute unless score boat.type board matches 4 run tag @a[team=boat] add boat.notspawn

schedule function minecraft:boat/reset_doit 5t
forceload remove -32 88 -102 313
