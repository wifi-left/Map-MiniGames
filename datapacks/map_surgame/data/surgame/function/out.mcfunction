##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tellraw @s ["\n\u00a7c你淘汰了。\n"]
tellraw @a[team=play.sur] ["\u00a7b\u00a7l玩家淘汰 ＞ ",{"selector":"@s"},"\u00a7c淘汰了。"]
tellraw @a[team=play.sur.zom] ["\u00a7b\u00a7l玩家淘汰 ＞ ",{"selector":"@s"},"\u00a7c淘汰了。"]
tellraw @a[team=wait.sur] ["\u00a7b\u00a7l玩家淘汰 ＞ ",{"selector":"@s"},"\u00a7c淘汰了。"]
