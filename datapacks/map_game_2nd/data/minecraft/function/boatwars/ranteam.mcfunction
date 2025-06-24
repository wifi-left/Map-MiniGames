##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[tag=boat.out] remove boat.out
tag @r[team=btw.wait,gamemode=adventure] add boat.out
scoreboard players add duel.ranteam board 1
execute if score duel.ranteam board matches 1..1 run team join btw.play.a @a[tag=boat.out]
execute if score duel.ranteam board matches 2..2 run team join btw.play.b @a[tag=boat.out]
tellraw @a[tag=boat.out,team=btw.play.a] ["§a你加入了 §e战船A队"]
tellraw @a[tag=boat.out,team=btw.play.b] ["§a你加入了 §9战船B队"]

execute if score duel.ranteam board matches 2.. run scoreboard players set duel.ranteam board 0
tag @a[tag=boat.out] remove boat.out

