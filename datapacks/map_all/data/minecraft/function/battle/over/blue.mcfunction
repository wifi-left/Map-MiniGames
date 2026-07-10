##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[team=wait.battle] add battle.sel
tag @a[team=play.battle.r] add battle.sel
tag @a[team=play.battle.b] add battle.sel
bossbar set minecraft:battle players @a[tag=battle.sel]
tellraw @a[tag=battle.sel] ["\n§6   游戏结束。胜利队伍：§b蓝队\n"]
title @a[tag=battle.sel] title ["\u00a7c\u00a7l游戏结束"]
title @a[team=play.battle.b] title ["\u00a76你赢了！"]
title @a[tag=battle.sel] subtitle ["\u00a7b蓝队胜利"]
tag @a remove battle.sel
execute as @a[team=play.battle.b,tag=play.total] run function minecraft:small_games/total/win_score {score:2}

function battle/over/globle

