##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["§b§l密室杀手 ＞ §a获胜队伍：§d平民"]
title @a[team=play.killer] title ["\u00a7c\u00a7l游戏结束"]
title @a[team=play.killer] subtitle ["\u00a7a平民胜利"]
title @a[team=wait.killer] title ["\u00a7c\u00a7l游戏结束"]
title @a[team=wait.killer] subtitle ["\u00a7a平民胜利"]
title @a[team=play.killer,tag=!killer.killer] title ["\u00a76你赢了！"]
execute as @a[team=play.killer,tag=!killer.killer,tag=play.total] run function minecraft:small_games/total/win_score {score:1}
execute as @a[team=play.killer,tag=!killer.killer,tag=play.total,gamemode=adventure] run function minecraft:small_games/total/win_score {score:1}

function killerever/over

