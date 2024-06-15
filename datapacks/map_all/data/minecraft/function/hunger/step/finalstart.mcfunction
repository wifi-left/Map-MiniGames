##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=hunger] ["\u00a7c死亡对决开始！"]
team modify hunger friendlyFire true
scoreboard players set hunger.time board 180
scoreboard players set hunger.state state 5
bossbar set minecraft:hungergame max 180
