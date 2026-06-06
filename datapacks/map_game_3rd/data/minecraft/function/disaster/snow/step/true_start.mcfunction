
scoreboard players set disaster.snow.state state 3
scoreboard players set disaster.snow.time board 30
## 速度
execute as @a[team=disaster.snow] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 0
tellraw @a[team=disaster.snow] ["\n\u00a7e\u00a7l事件\n\u00a7a游戏正式开始！\n"]
title @a[team=disaster.snow] title "\u00a7a游戏正式开始！"
title @a[team=disaster.snow] subtitle "\u00a7f小心天上，也小心脚下！"

execute as @a[team=disaster.snow,gamemode=adventure] run function minecraft:disaster/snow/give_item

effect give @a[team=disaster.snow] regeneration 30 0 true
