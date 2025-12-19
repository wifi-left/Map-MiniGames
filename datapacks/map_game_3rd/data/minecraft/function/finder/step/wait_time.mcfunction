scoreboard players remove finder.time tick 1
execute if score finder.time tick matches 0 run return run function minecraft:finder/step/timeout/timeout
title @a[team=finder] actionbar ["\u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"finder.time",objective:"tick"},color:aqua},"\u00a7bs"]
execute if score finder.time tick matches 10 run tellraw @a[team=finder] ["\u00a7e距离\u00a76游戏结束\u00a7e还有 \u00a7c10s\u00a7e。"]
execute if score finder.time tick matches 10 as @a[team=finder] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1

execute if score finder.time tick matches 1..5 run tellraw @a[team=finder] ["\u00a7e距离\u00a76游戏结束\u00a7e还有 \u00a7c",{score:{objective:"tick",name:"finder.time"},color:red},"\u00a7cs\u00a7e。"]
execute if score finder.time tick matches 1..5 as @a[team=finder] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1