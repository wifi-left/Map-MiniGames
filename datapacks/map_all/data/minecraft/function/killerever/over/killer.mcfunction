##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["§b§l密室杀手 ＞ §a获胜队伍：§c杀手"]
title @a[team=play.killer] title ["\u00a7c\u00a7lGAME OVER"]
title @a[team=play.killer] subtitle ["\u00a7c杀手胜利"]
title @a[team=wait.killer] title ["\u00a7c\u00a7lGAME OVER"]
title @a[team=wait.killer] subtitle ["\u00a7c杀手胜利"]
title @a[team=play.killer,tag=killer.killer] title ["\u00a76You won!"]
execute as @a[team=play.killer,tag=killer.killer,tag=play.total] run function minecraft:small_games/total/win_score {score:2}
function killerever/over

