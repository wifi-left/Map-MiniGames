##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.sheepwars.a] ["§2§lBOATWARS：§6平局"]
tellraw @a[team=play.sheepwars.b] ["§2§lBOATWARS：§6平局"]
tellraw @a[team=wait.sheepwars] ["§2§lBOATWARS：§6平局"]
title @a[team=wait.sheepwars] title ["\u00a7c游戏结束"]
title @a[team=play.sheepwars.a] title ["\u00a76你并没有输"]
title @a[team=play.sheepwars.b] title ["\u00a76你并没有输"]
title @a[team=wait.sheepwars] subtitle ["\u00a7a平局"]
title @a[team=play.sheepwars.a] subtitle ["\u00a7a平局"]
title @a[team=play.sheepwars.b] subtitle ["\u00a7a平局"]

execute as @a[team=play.sheepwars.a,tag=play.total] run function minecraft:small_games/total/win_score {score:1}
execute as @a[team=play.sheepwars.b,tag=play.total] run function minecraft:small_games/total/win_score {score:1}

function sheepwars/over/all

