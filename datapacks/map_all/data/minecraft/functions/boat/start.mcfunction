tp @a[team=boat] -62 160 -98 0 0
fill -66 165 -94 -60 160 -95 minecraft:stone_brick_wall keep
scoreboard players set boat.state state 2
execute as @a[team=boat] at @s run playsound minecraft:block.anvil.land player @s -62 160 -98 5 2 1
title @a[team=boat] title ["\u00a79\u00a9\u00a7l 冰船游戏 Ice Boat Game"]
# execute if score boat.type state matches 1 run 
team modify boat prefix ["\u00a7e[R]\u00a79 冰船\u00a78 | "]

kill @e[type=marker,tag=boat.trap]

execute if score boat.type board matches ..1 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位乘坐上\u00a7b冰船"]
execute if score boat.type board matches 2 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位乘坐上\u00a7d猪"]
execute if score boat.type board matches 3 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位乘坐上\u00a7c炽足兽"]
execute if score boat.type board matches 4 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位准备\u00a76赛跑"]
execute if score boat.type board matches 5 run title @a[team=boat] subtitle ["\u00a7a游戏即将开始，请各位乘坐上\u00a7e马"]

execute if score boat.type board matches 4 run function boat/readygo
scoreboard players set number boat.rounds 0
tag @a remove boat.notspawn
execute unless score boat.type board matches 4 run tag @a[team=boat] add boat.notspawn
scoreboard players reset @e[tag=boat]
kill @e[tag=boat]