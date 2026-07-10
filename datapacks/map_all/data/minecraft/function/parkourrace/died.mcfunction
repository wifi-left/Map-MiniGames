##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in parkourworld run tp @s 12 -58 306 -90 0
execute in parkourworld run function minecraft:parkourrace/backpoint
effect clear @s
tellraw @a[team=play.parkour] ["§a[INFO] §b玩家 ",{"selector":"@s"},"§c 死了。"]
execute at @s run playsound minecraft:entity.player.burp player @s

