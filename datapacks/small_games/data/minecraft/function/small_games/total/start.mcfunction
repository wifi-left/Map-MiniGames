##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score desk.state state matches 1.. if score desk.type board matches 3 run tellraw @s ["\u00a7c无法在商贾传奇开始时启动此游戏：它们是冲突的。"]
execute if score desk.state state matches 1.. if score desk.type board matches 3 run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
execute if score desk.state state matches 1.. if score desk.type board matches 3 run return fail

execute if score total.game_mode state matches 2 run return run function minecraft:small_games/total/send_to_desk

tag @a remove merchant.alive
tag @a remove merchant.player
tellraw @a ["§b§l小游戏派对 §a游戏开始。"]
scoreboard players add globle globle.game 1
scoreboard players operation game.total globle.game = globle globle.game
scoreboard players operation @a[team=wait.total] globle.game = game.total globle.game
scoreboard players set gametotal state 1
team join play.total @a[team=wait.total]
tag @a[team=play.total] add play.total
function small_games/total/reset
function minecraft:small_games/total/next_game
execute store result score count.1 board run data get storage minecraft:temp random_games.total
scoreboard players operation total.gamecount board = total.gamecount state
execute if score total.gamecount board matches 0 run scoreboard players operation total.gamecount board = count.1 board

execute if score total.gamecount board > count.1 board run scoreboard players operation total.gamecount board = count.1 board
execute if score total.gamecount state > count.1 board run scoreboard players operation total.gamecount state = count.1 board
function minecraft:small_games/total/settings/play_game_count/show

title @a[team=play.total] title [{text:"\u00a76游戏开始",color:"#009966"}]
title @a[team=play.total] subtitle ["此次游戏总数：",{"score":{"name":"total.gamecount","objective":"board"},"color":"aqua"}]
data modify block 322 91 152 front_text.messages[2] set value ["§e(",{"text":"0","color":"aqua"},"§e/",{"score":{"name":"total.gamecount","objective":"board"},"color":"aqua"},"§e)"]
