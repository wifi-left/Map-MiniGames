##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s run function boatwars/died
tellraw @a[team=btw.wait] [{"selector":"@s"},"\u00a77溺水死了。"]
tellraw @a[team=btw.play.a] [{"selector":"@s"},"\u00a77溺水死了。"]
tellraw @a[team=btw.play.b] [{"selector":"@s"},"\u00a77溺水死了。"]
