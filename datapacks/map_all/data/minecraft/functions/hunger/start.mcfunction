bossbar set minecraft:hungergame players @a[team=hunger]
bossbar set minecraft:hungergame name ["\u00a74饥饿游戏 \u00a78| \u00a7e游戏开始"]
execute as @a[team=hunger] at @s run spreadplayers 159 147 1 40 under 0 false @s
scoreboard players set hunger.time board 61
scoreboard players set hunger.state state 1
scoreboard players set hunger.chests board 3
# 会补给3次箱子，每次补给5分钟一次。
execute in hungerworld run forceload add 2 3 200 100
execute in hungerworld run forceload add 201 101 315 293
execute in hungerworld run kill @e[type=item,distance=0..]
function hunger/flushitem
team modify hunger friendlyFire false
execute in hungerworld run kill @e[distance=0..,type=experience_orb]
bossbar set minecraft:hungergame max 60