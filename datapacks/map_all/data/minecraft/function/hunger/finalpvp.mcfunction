##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=hunger] ["\n\u00a7b死亡对决\u00a7a即将开始。\n"]
execute as @a[team=hunger,gamemode=adventure] in hungerworld run spreadplayers 130 74 0 8 under -26 false @s
scoreboard players set hunger.state state 4
# State 4 准备死亡对决
# State 5 死亡对决
# State 10 游戏结束
# scoreboard players set hunger.time board 5
scoreboard players set hunger.time board 6
team modify hunger friendlyFire false
bossbar set minecraft:hungergame max 5
