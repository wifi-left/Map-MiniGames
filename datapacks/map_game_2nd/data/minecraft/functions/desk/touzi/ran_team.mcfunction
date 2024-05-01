##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @r[tag=desk.ranteam] add chess.ransel
scoreboard players add rand board 1
execute if score rand board matches 3.. run scoreboard players set rand board 1
execute if score rand board matches ..1 run tag @a[tag=chess.ransel] add touzi.team.a
execute if score rand board matches 2.. run tag @a[tag=chess.ransel] add touzi.team.b
tag @a[tag=chess.ransel] remove desk.ranteam
tag @a[tag=chess.ransel] remove chess.ransel

