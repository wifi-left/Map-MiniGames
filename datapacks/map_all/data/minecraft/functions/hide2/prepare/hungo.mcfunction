##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill 428 72 -267 434 72 -273 air
tellraw @a[team=hide.runner] ["\n\u00a7c   猎人出动！请小心！\n"]
title @a[team=hide.killer] title ["\u00a7b出发！"]
title @a[team=hide.killer] subtitle ["寻找躲藏起来的玩家！"]
# tellraw @a[team=hide.play.hun] ["\n\u00a7a提示：请攻击动物靠上部分。\n"]
execute as @a[team=hide.killer] run function hide2/during/hunitem
tp @a[team=hide.killer] 139 59 -135 180 0
scoreboard players set hide2.state state 1
# effect give @a[team=hide.play.hun] slow_falling 5 1 true
