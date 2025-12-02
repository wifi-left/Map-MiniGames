execute unless entity @a[tag=chess.a] run return run function minecraft:small_games/chess/blokus/turn/b
tellraw @a[team=chestgame] ["§6轮到§a§l队伍A§6下棋了。"]
tellraw @a[tag=chess.a] ["§a轮到你下棋了。\n§7注意：你与你的队友本局只有1颗棋子可以下。"]
execute as @a[tag=chess.a] at @s run playsound entity.experience_orb.pickup player @s
function small_games/chess/blokus/things/a
function minecraft:small_games/chess/blokus/flag_available/a