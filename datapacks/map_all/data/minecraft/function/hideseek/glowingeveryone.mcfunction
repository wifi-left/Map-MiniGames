##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
effect give @a[team=hide.play.hun] glowing 2 25 true
effect give @a[team=hide.play.ani] glowing 2 25 true
title @a[team=hide.play.hun] title ["\u00a7a事件"]
title @a[team=hide.play.hun] subtitle ["\u00a7e发光 2 秒"]
title @a[team=hide.play.ani] actionbar ["\u00a7a事件：\u00a7e发光 2 秒"]
execute as @e[tag=hide.wtf] run function minecraft:hideseek/during/ran_block_tp
execute as @e[tag=hide.wtf] at @s align xyz run tp @s ~ ~ ~


