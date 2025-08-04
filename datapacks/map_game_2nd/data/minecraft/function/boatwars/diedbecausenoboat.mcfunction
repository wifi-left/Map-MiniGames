##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s run function boatwars/died
tellraw @a[team=btw.wait] [{"selector":"@s"},"§7溺水死了。"]
tellraw @a[team=btw.play.a] [{"selector":"@s"},"§7溺水死了。"]
tellraw @a[team=btw.play.b] [{"selector":"@s"},"§7溺水死了。"]

