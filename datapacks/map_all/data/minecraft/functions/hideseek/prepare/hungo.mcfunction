execute as @a[team=hide.play.hun] run tp @s 470 2 -362 -180 0
tellraw @a[team=hide.play.ani] ["\n\u00a7c   猎人出动！请小心！\n"]
title @a[team=hide.play.hun] title ["\u00a7b出发！"]
title @a[team=hide.play.hun] subtitle ["寻找伪装成方块的玩家！"]
# tellraw @a[team=hide.play.hun] ["\n\u00a7a提示：请攻击动物靠上部分。\n"]
execute as @a[team=hide.play.hun] run function hideseek/during/hunitem
scoreboard players set hide.state state 1