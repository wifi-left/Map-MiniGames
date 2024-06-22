##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
effect give @a[team=hide.play.hun] glowing 2 25 true
effect give @a[team=hide.play.ani] glowing 2 25 true
title @a[team=hide.play.hun] actionbar ["\u00a7a事件：\u00a7e发光 2 秒"]
title @a[team=hide.play.ani] actionbar ["\u00a7a事件：\u00a7e发光 2 秒"]
execute as @e[tag=hide.wtf] run spreadplayers 468.0 -364.0 0 40 under 20 false @s
execute as @e[tag=hide.wtf] at @s align xyz run tp @s ~ ~ ~

