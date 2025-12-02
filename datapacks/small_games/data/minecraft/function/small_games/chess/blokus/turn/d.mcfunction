execute unless entity @a[tag=chess.d] run return run function minecraft:small_games/chess/blokus/turn/round_over
tellraw @a[team=chestgame] ["§6轮到§e§l队伍D§6下棋了。"]
tellraw @a[tag=chess.d] ["§a轮到你下棋了。\n§7注意：你与你的队友本局只有1颗棋子可以下。"]
execute as @a[tag=chess.d] at @s run playsound entity.experience_orb.pickup player @s
function small_games/chess/blokus/things/d
function minecraft:small_games/chess/blokus/flag_available/d
