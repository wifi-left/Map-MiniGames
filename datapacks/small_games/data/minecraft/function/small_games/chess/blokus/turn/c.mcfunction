execute unless entity @a[tag=chess.c] run return run function minecraft:small_games/chess/blokus/turn/d
tellraw @a[team=chestgame] ["§6轮到§c§l队伍C§6下棋了。"]
tellraw @a[tag=chess.c] ["§a轮到你下棋了。\n§7注意：你与你的队友本局只有1颗棋子可以下。"]
execute as @a[tag=chess.c] at @s run playsound entity.experience_orb.pickup player @s
function small_games/chess/blokus/things/c
function minecraft:small_games/chess/blokus/flag_available/c