title @a[team=deskgame] title ["\u00a7c游戏结束"]
title @a[gamemode=adventure,team=deskgame] title ["\u00a76你赢了"]
title @a[team=deskgame] subtitle [{selector:"@a[gamemode=adventure,team=deskgame]"}," \u00a7e获胜"]
tellraw @a[team=deskgame] ["\n   \u00a7\u00a76l游戏结束。",{selector:"@a[gamemode=adventure,team=deskgame]"}," \u00a7e获胜。\n"]
function minecraft:desk/russia/over/all
