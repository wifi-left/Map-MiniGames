scoreboard players remove mutouren.time tick 1
scoreboard players remove mutouren.next_freeze tick 1
execute if score mutouren.time tick matches 0 run return run function minecraft:mutouren/step/timeout/timeout
execute if score mutouren.next_freeze tick matches 0 run return run function minecraft:mutouren/step/timeout/freeze
execute if score mutouren.next_freeze tick matches 2..3 run title @a[team=mutouren] subtitle ["请注意！"]
execute if score mutouren.next_freeze tick matches 3 run title @a[team=mutouren] title ["\u00a7b1、2、3"]
execute if score mutouren.next_freeze tick matches 2 run title @a[team=mutouren] title ["\u00a7e木头人"]
execute if score mutouren.next_freeze tick matches 1 run title @a[team=mutouren] title ["\u00a7c不许动！"]
execute if score mutouren.next_freeze tick matches 1 run title @a[team=mutouren] subtitle ["\u00a7e你现在开始不能移动"]
execute if score mutouren.next_freeze tick matches 2..3 as @a[team=mutouren] at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 0 1
execute if score mutouren.next_freeze tick matches 1 as @a[team=mutouren] at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 1 1
title @a[team=mutouren] actionbar ["\u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"mutouren.time",objective:"tick"},color:aqua},"\u00a7bs"]
execute if score mutouren.time tick matches 10 run tellraw @a[team=mutouren] ["\u00a7e距离\u00a76游戏结束\u00a7e还有 \u00a7c10s\u00a7e。"]
execute if score mutouren.time tick matches 10 as @a[team=mutouren] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1

execute if score mutouren.time tick matches 1..5 run tellraw @a[team=mutouren] ["\u00a7e距离\u00a76游戏结束\u00a7e还有 \u00a7c",{score:{objective:"tick",name:"mutouren.time"},color:red},"\u00a7cs\u00a7e。"]
execute if score mutouren.time tick matches 1..5 as @a[team=mutouren] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1