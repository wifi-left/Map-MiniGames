##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=wait.sur] ["\u00a7a重置地图完毕！"]
title @a[team=wait.sur] reset
title @a[team=wait.sur] title ["\u00a7b地图重置完毕"]
title @a[team=wait.sur] subtitle ["\u00a7a等待下一步响应..."]
scoreboard players set sur.reset board -64
execute in airworld run forceload remove -104 -142 0 1
execute in airworld run forceload remove -103 28 1 171
function surgame:startafterreset

