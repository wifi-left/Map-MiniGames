##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
setblock 74 111 55 white_wool
scoreboard players set whitecount board 1
# tellraw @a [0]
# Part 1
# execute unless score whitecount board matches 5.. run tellraw @a [1]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score whitecount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/white/a
kill @e[tag=chess.calc]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}

execute unless score whitecount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/white/b
kill @e[tag=chess.calc]
# Part 2
# execute unless score whitecount board matches 5.. run tellraw @a [2]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score whitecount board matches 5.. run scoreboard players set whitecount board 1

execute unless score whitecount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/white/c
kill @e[tag=chess.calc]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score whitecount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/white/d
kill @e[tag=chess.calc]
# Part 3
# execute unless score whitecount board matches 5.. run tellraw @a [3]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score whitecount board matches 5.. run scoreboard players set whitecount board 1

execute unless score whitecount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/white/e
kill @e[tag=chess.calc]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score whitecount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/white/f
kill @e[tag=chess.calc]
# Part 4
# execute unless score whitecount board matches 5.. run tellraw @a [4]
execute unless score whitecount board matches 5.. run scoreboard players set whitecount board 1
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score whitecount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/white/g
kill @e[tag=chess.calc]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score whitecount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/white/h
kill @e[tag=chess.calc]
# Total
# execute unless score whitecount board matches 5.. run tellraw @a [5]

execute if score whitecount board matches 5.. run function small_games/chess/five/win/white
