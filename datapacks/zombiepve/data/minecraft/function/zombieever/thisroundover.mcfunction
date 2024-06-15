##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set zombie.state state 2
function zombieever/fuhuo_next
function zombieever/nextround
bossbar set zombie:zombiecount name ["\u00a7b任务：",{"selector":"@e[tag=pve.title,type=marker,limit=1]","color":"yellow"}]
