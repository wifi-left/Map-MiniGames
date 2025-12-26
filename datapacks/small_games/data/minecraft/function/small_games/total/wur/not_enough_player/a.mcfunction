tellraw @a[tag=total.sel.a] ["\n\u00a7c很抱歉地告诉您，您选择的游戏只有少数人选择，导致游戏无法正常开始。\n\u00a76\u00a7l已自动将您划入另一个小游戏中。\n"]
title @a[tag=total.sel.a] title ["\u00a76您已被划入另一个小游戏中"]
title @a[tag=total.sel.a] subtitle ["您选择的游戏少于2人选择"]
scoreboard players operation total.sel.b.count tick += total.sel.a.count tick
scoreboard players set total.sel.a.count tick 0
tag @a[tag=total.sel.a] add total.sel.b
tag @a[tag=total.sel.a] remove total.sel.a