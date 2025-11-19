##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove killer.killer
tag @a remove killer.saver
tag @a remove killer.runner
title @a[team=wait.killer] title [{"text":"密室杀手","color":"red","bold": true}]
title @a[team=wait.killer] subtitle ["\u00a7r一定要相信自己 ！"]
tellraw @a[team=wait.killer] ["\n    §6游戏开始！ 你将在8秒后获得职业道具！\n"]
# execute as @a[team=wait.killer] run spreadplayers 187 26 0 20 under 67 false @s
execute as @a[team=wait.killer] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
team join play.killer @a[team=wait.killer]
scoreboard players set killer.state state 1
