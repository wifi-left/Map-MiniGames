##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove duel.out
tag @r[team=wait.duel,gamemode=adventure] add duel.out
scoreboard players add duel.ranteam board 1
execute if score duel.ranteam board matches 1..1 run team join play.duel.blue @a[tag=duel.out]
execute if score duel.ranteam board matches 2..2 run team join play.duel.yellow @a[tag=duel.out]
tellraw @a[tag=duel.out,team=play.duel.yellow] ["§a你加入了 §e战桥黄队"]
tellraw @a[tag=duel.out,team=play.duel.blue] ["§a你加入了 §9战桥蓝队"]

execute if score duel.ranteam board matches 2.. run scoreboard players set duel.ranteam board 0
execute as @a[tag=duel.out] at @s run function duel/item
tag @a remove duel.out

