##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard objectives setdisplay sidebar.team.dark_gray gg.duel

title @a[team=wait.duel] title [{"text":"Duel Game","color":"yellow","bold": true}]
title @a[team=wait.duel] subtitle ["\u00a7r小心！别从桥上摔下去 ！"]
tellraw @a[team=wait.duel] ["\n\u00a76    游戏开始！\n"]
## execute as @a[team=wait.duel] run spreadplayers 22 -65 0 16 false @s
execute as @a[team=wait.duel] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
#team join play.duel @a[team=wait.duel]
scoreboard players set duel.ranteam board 1
execute as @a[team=wait.duel] at @s run function duel/spr
scoreboard players set duel.state state 1
scoreboard players set score.yellow tick 0
scoreboard players set score.blue tick 0
scoreboard players reset * gg.duel
schedule function duel/reset 1s replace
function duel/score/flush


