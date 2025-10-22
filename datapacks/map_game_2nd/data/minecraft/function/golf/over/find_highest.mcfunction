##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a remove golf.win
scoreboard players reset golf.best board
execute as @a[team=golf] run scoreboard players operation golf.best board > @s golf.score
execute as @a[team=golf] if score @s golf.score = golf.best board run tag @s add golf.win

execute as @a[team=golf,tag=golf.win,tag=play.total] run function minecraft:small_games/total/win_score {score:1}

execute as @a[team=golf,tag=golf.win] run title @a[team=golf,tag=golf.win] title ["\u00a76You Win"]
execute as @a[team=golf,tag=golf.win] run title @a[team=golf,tag=golf.win] subtitle ["\u00a7a你获得了这把比赛的胜利！"]
execute as @a[team=golf,tag=golf.win] run title @a[team=golf,tag=!golf.win] title ["\u00a7cGame Over"]
execute as @a[team=golf,tag=golf.win] run title @a[team=golf,tag=!golf.win] subtitle ["\u00a76获胜者：",{"selector": "@a[team=golf,tag=golf.win]"}]
execute as @a[team=golf,tag=golf.win] run tellraw @a[team=golf] ["§2§l[GOLF] §6游戏结束。获胜者：",{"selector":"@a[team=golf,tag=golf.win]"}]
execute as @a[team=golf] at @s run tellraw @s ["§a本次游戏你的总分数：",{"score":{"name":"@s","objective":"golf.score"},"color":"gold"}]
tag @a remove golf.win
