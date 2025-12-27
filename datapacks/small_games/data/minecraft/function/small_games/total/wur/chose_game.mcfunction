##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score count.1 board run data get storage minecraft:temp random_games.total
execute store result score count.2 board run data get storage minecraft:temp random_games.games

# total.gamecount state
data modify storage minecraft:temp total_game_wur.a set value {id:none}
data modify storage minecraft:temp total_game_wur.b set value {id:none}

execute unless score count.2 board matches 1.. run return run function small_games/total/over

execute unless function minecraft:small_games/total/wur/get_game run return run function small_games/total/over
data modify storage minecraft:temp total_game_wur.a set from storage minecraft:temp total_game
execute if function minecraft:small_games/total/wur/get_game run data modify storage minecraft:temp total_game_wur.b set from storage minecraft:temp total_game

scoreboard players set 2 board 2

scoreboard players operation total.display.now temp = count.3 board
scoreboard players operation total.display.all temp = total.gamecount board
scoreboard players operation total.display.now temp /= 2 board
scoreboard players operation total.display.all.mod temp = total.display.all temp
scoreboard players operation total.display.all.mod temp %= 2 board
scoreboard players operation total.display.all temp /= 2 board
scoreboard players operation total.display.all temp += total.display.all.mod temp

data modify block 322 91 152 front_text.messages[2] set value ["§e(",{"score":{"name":"total.display.now","objective":"temp"},"color":"aqua"},"§e/",{"score":{"name":"total.display.all","objective":"temp"},"color":"aqua"},"§e)"]
tellraw @a[team=play.total] [{text:"\n"},{text:"小游戏派对",color:"#009966",bold:true}," §e(",{"score":{"name":"total.display.now","objective":"temp"},"color":"aqua"},"§e/",{"score":{"name":"total.display.all","objective":"temp"},"color":"aqua"},"§e)\n\n -  \u00a7a\u00a7l请在下面两个游戏中选择一个你想要参与的游戏：\n\n\u00a7e[A] ",{"nbt":"total_game_wur.a.name",storage:"minecraft:temp","color":"yellow","bold":true,interpret:true},{text:"\n",color:gold,bold:true},{nbt:"total_game_wur.a.prefix",color:green,storage:"minecraft:temp",interpret:true}," ",{nbt:"total_game_wur.a.desc",color:gray,storage:"minecraft:temp",interpret:true},"\n\n\u00a79[B] ",{"nbt":"total_game_wur.b.name",storage:"minecraft:temp","color":"blue","bold":true,interpret:true},{text:"\n",color:gold,bold:true},{nbt:"total_game_wur.b.prefix",color:green,storage:"minecraft:temp",interpret:true}," ",{nbt:"total_game_wur.b.desc",color:gray,storage:"minecraft:temp",interpret:true},"\n"]

title @a[team=play.total] title ["\u00a7b下一轮游戏"]
title @a[team=play.total] subtitle ["请选择你想参与的游戏！"]

scoreboard players set gametotal state 2
scoreboard players set gametotal.time tick 31

execute as @a[team=play.total] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1

data modify block 321 90 152 front_text.messages[2] set value {"nbt":"total_game_wur.a.name",storage:"minecraft:temp","color":"yellow","bold":true,interpret:true}
data modify block 323 90 152 front_text.messages[2] set value {"nbt":"total_game_wur.b.name",storage:"minecraft:temp","color":"blue","bold":true,interpret:true}