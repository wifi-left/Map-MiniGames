##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§c对不起，你被抓到了！"]
team join pacman @s
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
tellraw @a[team=pacman] [{"selector":"@s"},"§c 被抓到了！"]
tellraw @a[team=pacman.killer] [{"selector":"@s"},"§c 被抓到了！"]
gamemode spectator @s