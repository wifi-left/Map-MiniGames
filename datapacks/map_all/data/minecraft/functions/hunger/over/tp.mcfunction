##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar set minecraft:hungergame name "\u00a74饥饿游戏 \u00a78| \u00a7a等待玩家加入"
scoreboard players set hunger.state state 0
gamemode adventure @a[team=hunger]
execute as @a[team=hunger] run function hunger/join
execute in hungerworld run kill @e[type=item,distance=0..]
execute in hungerworld run kill @e[distance=0..,type=experience_orb]
team modify hunger friendlyFire false
execute in hungerworld run forceload remove all

