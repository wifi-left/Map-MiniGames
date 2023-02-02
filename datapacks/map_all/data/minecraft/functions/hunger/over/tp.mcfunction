bossbar set minecraft:hungergame name "\u00a74饥饿游戏 \u00a78| \u00a7a等待玩家加入"
scoreboard players set hunger.state state 0
gamemode adventure @a[team=hunger]
execute as @a[team=hunger] run function hunger/join
execute in hungerworld run kill @e[type=item,distance=0..]
execute in hungerworld run forceload remove 2 3 200 100
execute in hungerworld run kill @e[distance=0..,type=experience_orb]
execute in hungerworld run forceload remove 201 101 315 293
team modify hunger friendlyFire false
