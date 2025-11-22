##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s -6 3 41 -90 0
effect clear @s
tellraw @a[team=play.parkour] ["§a[INFO] §b玩家 ",{"selector":"@s"},"§c 死了。"]
playsound minecraft:entity.player.burp player @s

