# schedule function battle/over/tp 5s
# scoreboard players set battle.state state 5
tag @a[team=wait.battle] add battle.sel
tag @a[team=play.battle.r] add battle.sel
tag @a[team=play.battle.b] add battle.sel
bossbar set minecraft:battle players @a[tag=battle.sel]
tellraw @a[tag=battle.sel] ["\n\u00a76   游戏结束。胜利队伍：\u00a7d红队\n"]
title @a[tag=battle.sel] title ["\u00a7c\u00a7lGAME OVER"]
title @a[team=play.battle.r] title ["\u00a76You won!"]
title @a[tag=battle.sel] subtitle ["\u00a7d红队胜利"]
tag @a remove battle.sel
function battle/over/globle