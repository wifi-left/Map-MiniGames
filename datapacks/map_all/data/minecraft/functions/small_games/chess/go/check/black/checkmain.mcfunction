##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
setblock 74 111 55 black_wool
scoreboard players set blackcount board 1
# tellraw @a [0]
# Part 1
# execute unless score blackcount board matches 5.. run tellraw @a [1]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score blackcount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/black/a
kill @e[tag=chess.calc]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}

execute unless score blackcount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/black/b
kill @e[tag=chess.calc]
# Part 2
# execute unless score blackcount board matches 5.. run tellraw @a [2]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score blackcount board matches 5.. run scoreboard players set blackcount board 1

execute unless score blackcount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/black/c
kill @e[tag=chess.calc]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score blackcount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/black/d
kill @e[tag=chess.calc]
# Part 3
# execute unless score blackcount board matches 5.. run tellraw @a [3]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score blackcount board matches 5.. run scoreboard players set blackcount board 1

execute unless score blackcount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/black/e
kill @e[tag=chess.calc]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score blackcount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/black/f
kill @e[tag=chess.calc]
# Part 4
# execute unless score blackcount board matches 5.. run tellraw @a [4]
execute unless score blackcount board matches 5.. run scoreboard players set blackcount board 1
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score blackcount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/black/g
kill @e[tag=chess.calc]
execute as @s at @s run summon marker ~ 116 ~ {Tags:["chess.calc"]}
execute unless score blackcount board matches 5.. as @e[tag=chess.calc] at @s run function small_games/chess/five/check/black/h
kill @e[tag=chess.calc]
# Total
# execute unless score blackcount board matches 5.. run tellraw @a [5]

execute if score blackcount board matches 5.. run function small_games/chess/five/win/black
