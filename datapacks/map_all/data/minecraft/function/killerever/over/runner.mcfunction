##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\u00a7b\u00a7l密室杀手 ＞ \u00a7a获胜队伍：\u00a7d平民"]
title @a[team=play.killer] title ["\u00a7c\u00a7lGAME OVER"]
title @a[team=play.killer] subtitle ["\u00a7a平民胜利"]
title @a[team=wait.killer] title ["\u00a7c\u00a7lGAME OVER"]
title @a[team=wait.killer] subtitle ["\u00a7a平民胜利"]
title @a[team=play.killer,tag=!killer.killer] title ["\u00a76You won!"]
scoreboard players add @a[team=play.killer,tag=!killer.killer,tag=play.total] score 1
function killerever/over
