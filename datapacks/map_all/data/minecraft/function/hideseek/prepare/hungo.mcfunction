##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=hide.play.hun] run function minecraft:hideseek/during/hun_tp

tellraw @a[team=hide.play.ani] ["\n§c   猎人出动！请小心！\n"]
title @a[team=hide.play.hun] title ["\u00a7b出发！"]
title @a[team=hide.play.hun] subtitle ["寻找伪装成方块的玩家！"]
# tellraw @a[team=hide.play.hun] ["\n\u00a7a提示：请攻击动物靠上部分。\n"]
# execute as @a[team=hide.play.hun] run function hideseek/during/hunitem
scoreboard players set hide.state state 1

