##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set sur.reset board -64
tellraw @a[team=wait.sur] ["\u00a7e正在开始重置地图"]
title @a[team=wait.sur] times 0 200 0
title @a[team=wait.sur] title ["\u00a7e重置地图中..."]
title @a[team=wait.sur] subtitle ["\u00a7a等待响应..."]
execute in airworld run forceload add -104 -142 0 1
execute in airworld run forceload add -103 28 1 171
scoreboard players set sur.state state 2
schedule clear surgame:reset/process
schedule clear surgame:reset/start
team modify play.sur friendlyFire false
bossbar set surgame:time name ["\u00a79生存游戏 \u00a7aSurvival Game \u00a76- \u00a7e重置地图中..."]
function surgame:reset/process

