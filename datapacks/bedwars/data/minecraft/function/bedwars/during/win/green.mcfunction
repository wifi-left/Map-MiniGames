##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\n\n\n\n§f§l胜利 > §a绿队 §6获得了胜利！\n"]
execute as @a[team=bw.green,tag=play.total] run function minecraft:small_games/total/win_score {score:2}
title @a[tag=bw.player] title ["\u00a7c\u00a7l游戏结束"]
title @a[tag=bw.player] subtitle ["\u00a7a绿队 \u00a76获胜"]
title @a[team=bw.green] title ["\u00a76你赢了！"]
title @a[team=bw.green] subtitle ["\u00a7a绿队 \u00a76获胜"]
function minecraft:bedwars/after/over

