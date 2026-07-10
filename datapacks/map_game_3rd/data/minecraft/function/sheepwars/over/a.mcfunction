##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.sheepwars.a] ["§2§l绵羊突击队：§6获胜队伍：§9队伍A（你）"]
tellraw @a[team=play.sheepwars.b] ["§2§l绵羊突击队：§6获胜队伍：§9队伍A"]
tellraw @a[team=wait.sheepwars] ["§2§l绵羊突击队：§6获胜队伍：§9队伍A"]
title @a[team=wait.sheepwars] title ["\u00a7c游戏结束"]
title @a[team=play.sheepwars.a] title ["\u00a76你赢了"]
title @a[team=play.sheepwars.b] title ["\u00a7c你输了"]
title @a[team=wait.sheepwars] subtitle ["\u00a79队伍A\u00a7r赢了"]
title @a[team=play.sheepwars.a] subtitle ["\u00a79队伍A（你）\u00a7r赢了"]
title @a[team=play.sheepwars.b] subtitle ["\u00a79队伍A\u00a7r赢了"]
execute as @a[team=play.sheepwars.a,tag=play.total] run function minecraft:small_games/total/win_score {score:2}
function sheepwars/over/all

