gamemode spectator @a[gamemode=adventure,team=deskgame]
title @s title ["\u00a7e回合结束"]
title @s subtitle ["请等待下一个玩家操作"]
title @s actionbar ["\u00a7e你的回合结束！"]
tag @s remove merchant.turn.now

tellraw @s ["\n\u00a7e你的回合结束！\n"]
playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
scoreboard players set desk.state state 2
function minecraft:merchant/during/next_player
