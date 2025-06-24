##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @e[tag=chess.put.white] at @s run function small_games/chess/gojp/turntowhite
execute as @e[tag=chess.put.black] at @s run function small_games/chess/gojp/turntoblack
tag @a[team=!chestgame] remove chess.black
tag @a[team=!chestgame] remove chess.white

execute if score chess.turn board matches 1 as @a[tag=chess.black] at @s as @e[type=item,distance=0..10] run function small_games/chess/gojp/things/black
execute if score chess.turn board matches 1 as @a[tag=chess.black] at @s as @e[type=item,distance=0..10] run kill @s
execute if score chess.turn board matches 2 as @a[tag=chess.white] at @s as @e[type=item,distance=0..10] run function small_games/chess/gojp/things/white
execute if score chess.turn board matches 2 as @a[tag=chess.white] at @s as @e[type=item,distance=0..10] run kill @s

