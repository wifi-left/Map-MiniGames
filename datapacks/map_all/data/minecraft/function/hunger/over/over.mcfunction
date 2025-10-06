##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar set minecraft:hungergame name "\u00a74饥饿游戏 \u00a78| \u00a7c游戏结束"
bossbar set minecraft:hungergame max 1
bossbar set minecraft:hungergame value 1
schedule function hunger/over/tp 6s
tellraw @a ["\n§4§l饥饿游戏 ＞ §a游戏结束。获胜者：",{"selector":"@a[gamemode=adventure,team=hunger]","color":"yellow"},"\n"]
tellraw @a[team=hunger] ["§a你已加入游戏队列，将在 5 秒后进入游戏等待大厅。"]
gamemode spectator @a[team=hunger]
scoreboard players set hunger.state state 10
execute in airworld run kill @e[distance=0..,type=experience_orb]
execute in airworld run forceload remove 592 -165 340 -347
team modify hunger friendlyFire false


