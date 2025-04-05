##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["§c现在管理员不在线时不可以开始游戏。\n§7(单人游戏不受影响)"]
scoreboard players set map.playmode.offline board 0
