execute unless entity @a[tag=chess.b] run return run function minecraft:small_games/chess/blokus/turn/c
tellraw @a[team=chestgame] ["§6轮到§9§l队伍B§6下棋了。"]
tellraw @a[tag=chess.b] ["§a轮到你下棋了。\n§7注意：你与你的队友本局只有1颗棋子可以下。"]
execute as @a[tag=chess.b] at @s run playsound entity.experience_orb.pickup player @s
function small_games/chess/blokus/things/b
function minecraft:small_games/chess/blokus/flag_available/b