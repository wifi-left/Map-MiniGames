##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=chestgame] ["§6轮到§0§l黑队§6下棋了。"]
tellraw @a[tag=chess.black] ["§a轮到你下棋了。\n§7注意：你与你的队友本局只有1颗棋子可以下。"]
execute as @a[tag=chess.black] at @s run playsound entity.experience_orb.pickup player @s
function small_games/chess/boom/things/black

title @a[tag=chess.white] actionbar ["\u00a76\u00a7l你在\u00a7f\u00a7l白队。\u00a7c\u00a7l"]
title @a[tag=chess.black] actionbar ["\u00a76\u00a7l你在\u00a70\u00a7l黑队。\u00a7a\u00a7l该你下棋了。"]

