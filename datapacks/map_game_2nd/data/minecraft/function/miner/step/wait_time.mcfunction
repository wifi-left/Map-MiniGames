scoreboard players remove miner.time tick 1
execute if score miner.time tick matches 0 run return run function minecraft:miner/step/timeout/timeout
title @a[team=miner] actionbar ["\u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"miner.time",objective:"tick"},color:aqua},"\u00a7bs"]
execute if score miner.time tick matches 10 run tellraw @a[team=miner] ["\u00a7e距离\u00a76游戏结束\u00a7e还有 \u00a7c10s\u00a7e。"]
execute if score miner.time tick matches 10 as @a[team=miner] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1

execute if score miner.time tick matches 1..5 run tellraw @a[team=miner] ["\u00a7e距离\u00a76游戏结束\u00a7e还有 \u00a7c",{score:{objective:"tick",name:"miner.time"},color:red},"\u00a7cs\u00a7e。"]
execute if score miner.time tick matches 1..5 as @a[team=miner] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1