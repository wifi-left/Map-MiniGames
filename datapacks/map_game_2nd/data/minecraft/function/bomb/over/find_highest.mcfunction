##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove bomb.win
scoreboard players reset bomb.best board
execute as @a[team=boom] run scoreboard players operation bomb.best board > @s bomb.score
execute as @a[team=boom] if score @s bomb.score = bomb.best board run tag @s add bomb.win

execute as @a[team=boom,tag=bomb.win,tag=play.total] run function minecraft:small_games/total/win_score {score:1}

execute as @a[team=boom,tag=bomb.win] run title @a[team=boom,tag=bomb.win] title ["\u00a76You Win"]
execute as @a[team=boom,tag=bomb.win] run title @a[team=boom,tag=bomb.win] subtitle ["\u00a7a你获得了这把比赛的胜利！"]
execute as @a[team=boom,tag=bomb.win] run title @a[team=boom,tag=!bomb.win] title ["\u00a7cGame Over"]
execute as @a[team=boom,tag=bomb.win] run title @a[team=boom,tag=!bomb.win] subtitle ["\u00a76获胜者：",{"selector": "@a[team=boom,tag=bomb.win]"}]
execute as @a[team=boom,tag=bomb.win] run tellraw @a[team=boom] ["§2§l[拆弹达人] §6游戏结束。获胜者：",{"selector":"@a[team=boom,tag=bomb.win]"}]
execute as @a[team=boom] at @s run tellraw @s ["§a本次游戏你的总分数：",{"score":{"name":"@s","objective":"bomb.score"},"color":"gold"}]
tag @a remove bomb.win

