##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set wolf.event board 100
scoreboard players set wolf.time board 6
scoreboard players set wolf.ttime board -1
scoreboard players set twolf.state state 3
tag @a remove wolf.acting
tag @a remove wolf.protected
tag @a remove wolf.killed
tag @a remove wolf.fired
tag @a remove wolf.poisoned
tag @a remove wolf.rescued
# 守卫
tag @a remove wolf.lastprotected
# 行动
tag @a remove wolf.acting
tag @a remove wolf.whitewolf
tag @a remove wolf.white
# 丘比特
tag @a remove wolf.connected
schedule clear #wolffunctions
execute unless score wolf.time board matches 1.. run bossbar set minecraft:wolfkiller name ["\u00a76狼人杀 \u00a78| \u00a7c游戏结束"]

