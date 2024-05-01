##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add @s globle.game 0
execute unless score @s leave matches 1.. if score @s globle.game matches ..1 run tellraw @s ["\u00a7c很抱歉，您无法重新加入游戏！"]
execute unless score @s leave matches 1.. if score @s globle.game matches 2.. run tellraw @s ["\u00a76正在为您检查游戏状态！如果游戏仍在运行且支持重新加入，您将会重新进入游戏！\n\u00a77您的游戏状态码：",{"score":{"objective": "globle.game","name": "@s"},"color":"gray","bold": true}]
execute if score bw.state state matches 1.. if score @s globle.game = bw globle.game run function bedwars/during/player/rejoin
execute if score zombie.state state matches 1.. if score @s globle.game = zombie globle.game run function zombieever/rejoin
execute if score gametotal state matches 1.. if score @s globle.game = game.total globle.game run function small_games/total/rejoin
execute if score twolf.state state matches 1.. as @s[team=wolfpeople] run function twolf/rejoin
execute if score twolf.state state matches 1.. as @s[team=wait.wolfpeople] run function twolf/rejoin
execute if score @s globle.game matches ..1 run scoreboard players reset @s globle.game
