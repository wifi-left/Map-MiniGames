##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove battle.random.out
tag @r[tag=battle.random] add battle.random.out
tag @r[tag=battle.random.out] remove battle.random
scoreboard players add battle.ranteam board 1
execute if score battle.ranteam board matches 1..1 run team join play.battle.r @a[tag=battle.random.out]
execute if score battle.ranteam board matches 2..2 run team join play.battle.b @a[tag=battle.random.out]
tellraw @a[tag=battle.random.out,team=play.battle.r] ["\u00a7a你加入了 \u00a7c红队"]
tellraw @a[tag=battle.random.out,team=play.battle.b] ["\u00a7a你加入了 \u00a79蓝队"]

execute if score battle.ranteam board matches 2.. run scoreboard players set battle.ranteam board 0
tag @a remove battle.random.out
