##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @a[team=play.zombie,gamemode=adventure]
title @a[team=play.zombie] title ["\u00a7cYou lost!"]
title @a[team=play.zombie] subtitle ["\u00a7e所有玩家已经阵亡。"]
function zombieever/over/all
tellraw @a[team=play.zombie] ["\n§2§l   §6游戏结束！持续轮数：",{"score":{"objective":"board","name":"zombie.round"},"color":"yellow"},"\n"]


