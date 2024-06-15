##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team modify hunger friendlyFire true
tellraw @a[team=hunger] ["\n\u00a7a   PVP 目前已被允许。\n"]
scoreboard players set hunger.state state 2
scoreboard players set hunger.time board 60
bossbar set minecraft:hungergame max 60

