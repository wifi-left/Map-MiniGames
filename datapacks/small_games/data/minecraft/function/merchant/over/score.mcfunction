title @a[team=deskgame] title ["\u00a7c游戏结束"]
title @a[tag=merchant.win] title ["\u00a76你赢了"]
title @a[team=deskgame] subtitle [{selector:"@a[tag=merchant.win]"}," \u00a7e获胜"]
tellraw @a[team=deskgame] ["\n   \u00a76\u00a7l游戏结束。",{selector:"@a[tag=merchant.win]"}," \u00a7e获胜。\n"]
function minecraft:merchant/over/all
