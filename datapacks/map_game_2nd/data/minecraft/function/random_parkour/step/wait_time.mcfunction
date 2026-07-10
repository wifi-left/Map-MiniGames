scoreboard players remove random_parkour.time tick 1
execute if score random_parkour.time tick matches 0 run return run function minecraft:random_parkour/step/timeout/timeout
execute if score random_parkour.step board matches 1.. run title @a[team=random_parkour] actionbar ["\u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"random_parkour.time",objective:"tick"},color:aqua},"\u00a7bs \u00a78| \u00a7a跑酷生成还剩 ",{score:{name:"random_parkour.step",objective:"board"},color:aqua}," \u00a7a个方块"]
execute unless score random_parkour.step board matches 1.. run title @a[team=random_parkour] actionbar ["\u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"random_parkour.time",objective:"tick"},color:aqua},"\u00a7bs"]
execute if score random_parkour.time tick matches 10 run tellraw @a[team=random_parkour] ["\u00a7e距离\u00a76游戏结束\u00a7e还有 \u00a7c10s\u00a7e。"]
execute if score random_parkour.time tick matches 10 as @a[team=random_parkour] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1

execute if score random_parkour.time tick matches 1..5 run tellraw @a[team=random_parkour] ["\u00a7e距离\u00a76游戏结束\u00a7e还有 \u00a7c",{score:{objective:"tick",name:"random_parkour.time"},color:red},"\u00a7cs\u00a7e。"]
execute if score random_parkour.time tick matches 1..5 as @a[team=random_parkour] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1