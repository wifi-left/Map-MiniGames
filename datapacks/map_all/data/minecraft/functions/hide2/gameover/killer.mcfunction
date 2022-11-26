title @a[team=hide.runner] title ["\u00a76Game Over!"]
title @a[team=hide.killer] title ["\u00a76Game Over!"]
tellraw @a[team=hide.killer] ["\n\u00a7c   追杀者获胜！\n"]
tellraw @a[team=hide.runner] ["\n\u00a7c   追杀者获胜！\n"]
# tellraw @a[team=hide.runner] ["\n\u00a7c   追杀者获胜！\n"]
tellraw @a[team=hide.wait2] ["\n\u00a7c   追杀者获胜！\n"]
function hide2/gameover/over
