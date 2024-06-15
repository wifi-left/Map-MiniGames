##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function twolf/events/reset
gamemode adventure @a[tag=wolf.tip]
scoreboard players set twolf.state state 0
execute as @a[tag=wolf.tip] run function twolf/join
execute unless score wolf.time board matches 1.. run bossbar set minecraft:wolfkiller name ["\u00a76狼人杀 \u00a78| \u00a7a等待游戏开始"]
scoreboard players set wolf.return board 1
