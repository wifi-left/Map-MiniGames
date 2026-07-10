##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar set minecraft:hungergame players @a[team=hunger]
bossbar set minecraft:hungergame name ["\u00a74饥饿游戏 \u00a78| \u00a7e游戏开始"]
execute in airworld as @a[team=hunger] at @s run spreadplayers 473 -243 1 40 under -30 false @s
scoreboard players set hunger.time board 4
scoreboard players set hunger.state state 6
scoreboard players set hunger.chests board 3
bossbar set minecraft:hungergame max 3
bossbar set minecraft:hungergame value 3
# 会补给3次箱子，每次补给5分钟一次。
execute in airworld run forceload add 592 -165 340 -347
execute in airworld run kill @e[type=item,distance=0..]
execute in airworld run setblock 480 -35 -256 anvil replace
execute in airworld run setblock 476 -37 -271 anvil replace
# execute in airworld run forceload add 
team modify hunger friendlyFire false
execute in airworld run kill @e[distance=0..,type=experience_orb]


