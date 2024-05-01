##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar set minecraft:hungergame name "\u00a74饥饿游戏 \u00a78| \u00a7c游戏结束"
bossbar set minecraft:hungergame max 1
bossbar set minecraft:hungergame value 1
schedule function hunger/over/tp 6s
tellraw @a ["\n\u00a74\u00a7l饥饿游戏 ＞ \u00a7a游戏结束。获胜者：",{"selector":"@a[gamemode=adventure,team=hunger]","color":"yellow"},"\n"]
tellraw @a[team=hunger] ["\u00a7a你已加入游戏队列，将在 5 秒后进入游戏等待大厅。"]
gamemode spectator @a[team=hunger]
scoreboard players set hunger.state state 10
execute in hungerworld run kill @e[distance=0..,type=experience_orb]
execute in hungerworld run forceload remove all
team modify hunger friendlyFire false

