##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:admin/main
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a ["§c地图已启用管理员设置游戏模式！现在仅管理员可设定游戏！\n§7(单人游戏不受影响)"]
scoreboard players set map.settingmode board 1
