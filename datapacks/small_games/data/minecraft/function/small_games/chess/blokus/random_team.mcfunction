##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @r[tag=chess.ranteam] add chess.ransel
scoreboard players add rand board 1
execute if score rand board matches 5.. run scoreboard players set rand board 1
execute if score rand board matches ..1 run tag @a[tag=chess.ransel] add chess.a
execute if score rand board matches 2 run tag @a[tag=chess.ransel] add chess.b
execute if score rand board matches 3 run tag @a[tag=chess.ransel] add chess.c
execute if score rand board matches 4 run tag @a[tag=chess.ransel] add chess.d
tag @a[tag=chess.ransel] remove chess.ranteam
tag @a[tag=chess.ransel] remove chess.ransel


