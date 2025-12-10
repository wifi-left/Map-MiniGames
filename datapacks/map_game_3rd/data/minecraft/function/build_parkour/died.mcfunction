##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§c对不起，你失败了！"]
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
tellraw @a[team=build_parkour] [{"selector":"@s"},"§c 失败了！"]
gamemode spectator @s

scoreboard players add build_parkour.any_success board 1
