##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @a[team=play.zombie,gamemode=adventure]
title @a[team=play.zombie] title ["\u00a7cYou lost!"]
title @a[team=play.zombie] subtitle ["\u00a7b召唤师非正常死亡"]
function zombieever/over/all
tellraw @a[team=play.zombie] ["\n\u00a72\u00a7l   \u00a76游戏结束！持续轮数：",{"score":{"objective": "board","name": "zombie.round"},"color":"yellow"},"\n"]

