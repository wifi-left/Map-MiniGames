##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s -6 3 41 -90 0
effect clear @s
tellraw @a[team=play.parkour] ["\u00a7a[INFO] \u00a7b玩家 ",{"selector":"@s"},"\u00a7c 死了。"]
playsound minecraft:entity.player.burp player @s
