
scoreboard players add disaster.snow.state state 1
scoreboard players set disaster.snow.time board 30
## 速度到顶 10；本窗口（30s）是 PVP 预告，倒计时结束后开启 PVP
scoreboard players set disaster.snow.speed board 10
execute as @a[team=disaster.snow] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 0
tellraw @a[team=disaster.snow] ["\n\u00a7e\u00a7l事件\n\u00a7b速度已到上限！\n"]

execute as @a[team=disaster.snow,gamemode=adventure] run function minecraft:disaster/snow/give_item

effect give @a[team=disaster.snow] regeneration 30 0 true
