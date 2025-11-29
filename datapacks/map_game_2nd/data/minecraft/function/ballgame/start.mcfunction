tag @a remove ball.teama
tag @a remove ball.teamb
clear @a[team=ballgame]

execute unless score total.start_game_mode board matches 1 run scoreboard players operation ballgame.type board = ballgame.type state

scoreboard players set ballgame.state state 1
function minecraft:ballgame/ball/kill_ball
function minecraft:ballgame/actions/football/random_team
# PINK : A
tellraw @a[team=ballgame] ["\u00a76\u00a7l球类游戏 \u00a7a游戏开始！"]
title @a[team=ballgame] title ["\u00a7a游戏开始！"]
title @a[team=ballgame] subtitle ["\u00a7e游戏将在\u00a7c5s\u00a7e后开始"]
tellraw @a[team=ballgame] ["\n\u00a76\u00a7l温馨提示：\n\u00a7a本小游戏版本的足球经过简化，不存在任何违规、罚球、点球设定。\n\n\u00a7d\u00a7l左键点击\u00a7b击球（让球移动）；\n\u00a7d\u00a7l右键点击\u00a7b截球（让球停止）。\n"]
# ORANGE : B
scoreboard players set ball.score.a board 0
scoreboard players set ball.score.b board 0
scoreboard players set ball.lastwin board -1
scoreboard players set ball.rounds board 0
scoreboard players set ball.time board 6
scoreboard players set ballgame.state state 3
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teama] run spreadplayers 783 -160 0 4 under -56 false @s
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teama] run rotate @s 180 0
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teamb] run spreadplayers 783 -191 0 4 under -56 false @s
execute as @a[team=ballgame,gamemode=adventure,tag=ball.teamb] run rotate @s 0 0
tellraw @a[team=ballgame] ["\u00a7e游戏将在\u00a7c5s\u00a7e后开始"]