
tellraw @a[team=play.total,tag=total.sel.a] ["§c§l很抱歉，这个游戏已经开始了。将在§6§l5§c§l秒后重试"]
title @a[team=play.total,tag=total.sel.a] title ["\u00a7c抱歉！"]
title @a[team=play.total,tag=total.sel.a] subtitle ["\u00a7b我们将在 \u00a7e5 \u00a7b秒后重试"]
# tag @s add random_game_able
schedule function small_games/total/wur/startgame/a 5s replace