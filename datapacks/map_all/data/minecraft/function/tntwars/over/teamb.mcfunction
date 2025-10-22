##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @a[team=play.tntwars] title ["\u00a7cGAME OVER"]
title @a[team=play.tntwars,tag=tntwars.b] title ["\u00a76YOU WON!"]
execute as @a[team=play.tntwars,tag=tntwars.b,tag=play.total] run function minecraft:small_games/total/win_score {score:2}
title @a[team=wait.tntwars] title ["\u00a7cGAME OVER"]
title @a[team=play.tntwars] subtitle ["\u00a7b「队伍B」\u00a7f获胜！"]
title @a[team=wait.tntwars] subtitle ["\u00a7b「队伍B」\u00a7f获胜！"]
tellraw @a[team=wait.tntwars] ["\n§e ※ §c§lTNT Wars\n§b「队伍B」§6获胜！\n"]
tellraw @a[team=play.tntwars] ["\n§e ※ §c§lTNT Wars\n§b「队伍B」§6获胜！\n"]
function tntwars/over/over

