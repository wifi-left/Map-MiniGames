##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tellraw @s ["§c对不起，你死了。\n§a请等待下一局游戏！"]
tellraw @a[team=play.snow] ["§f[SNOW] ",{"selector":"@s"},"§7淘汰了。"]
tellraw @a[team=wait.snow] ["§f[SNOW] ",{"selector":"@s"},"§7淘汰了。"]
