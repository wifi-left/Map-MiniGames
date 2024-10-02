tag @a remove golf.win
scoreboard players reset golf.best board
execute as @a[team=golf] run scoreboard players operation golf.best board > @s golf.score
execute as @a[team=golf] if score @s golf.score = golf.best board run tag @s add golf.win

scoreboard players add @a[team=golf,tag=golf.win,tag=play.total] score 1

execute as @a[team=golf,tag=golf.win] run title @a[team=golf,tag=golf.win] title ["\u00a76You Win"]
execute as @a[team=golf,tag=golf.win] run title @a[team=golf,tag=golf.win] subtitle ["\u00a7a你获得了这把比赛的胜利！"]
execute as @a[team=golf,tag=golf.win] run title @a[team=golf,tag=!golf.win] title ["\u00a7cGame Over"]
execute as @a[team=golf,tag=golf.win] run title @a[team=golf,tag=!golf.win] subtitle ["\u00a76获胜者：",{"selector": "@a[team=golf,tag=golf.win]"}]
execute as @a[team=golf,tag=golf.win] run tellraw @a[team=golf] ["\u00a72\u00a7l[GOLF] \u00a76游戏结束。获胜者：",{"selector": "@a[team=golf,tag=golf.win]"}]
execute as @a[team=golf] at @s run tellraw @s ["\u00a7a本次游戏你的总分数：",{"score": {"name": "@s","objective": "golf.score"},"color": "gold"}]
tag @a remove golf.win