##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tellraw @s ["\n§c你淘汰了。\n"]
tellraw @a[team=play.sur] ["§b§l玩家淘汰 ＞ ",{"selector":"@s"},"§c淘汰了。"]
tellraw @a[team=play.sur.zom] ["§b§l玩家淘汰 ＞ ",{"selector":"@s"},"§c淘汰了。"]
tellraw @a[team=wait.sur] ["§b§l玩家淘汰 ＞ ",{"selector":"@s"},"§c淘汰了。"]

