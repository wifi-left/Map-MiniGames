##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s[tag=!GOABLE.SPEC] ["§c您需要先开启旁观者模式才能使用此选项。"]
tellraw @s[tag=GOABLE.SPEC] ["\n§a使用 §6/trigger hub§a 返回大厅并关闭旁观视角。\n"]
gamemode spectator @s[tag=GOABLE.SPEC]
