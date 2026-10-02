tellraw @s ["\n\u00a7c你成功完成了目标。\n"]
scoreboard players set game.leftplayer temp 0
scoreboard players operation game.leftplayer.show temp = game.leftplayer temp
execute as @a[team=firstoutwins,gamemode=spectator,tag=firstoutwins.win] run scoreboard players add game.leftplayer temp 1

scoreboard players add game.leftplayer.show temp 1
title @s subtitle {translate:"你是第 %s 名",with:[{score:{name:"game.leftplayer.show",objective:temp},color:gold}]}
tellraw @a[team=firstoutwins] [{selector:"@s"}," \u00a76完成了目标，得到了第 ",{score:{name:"game.leftplayer.show",objective:temp},color:aqua}," \u00a76名。"]
playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
tag @s add firstoutwins.win
gamemode spectator @s
function player:full_health
clear @s
execute if score game.leftplayer temp matches 0 run function minecraft:small_games/total/win_score {score:4}
execute if score game.leftplayer temp matches 1 run function minecraft:small_games/total/win_score {score:3}
execute if score game.leftplayer temp matches 2 run function minecraft:small_games/total/win_score {score:2}
execute if score game.leftplayer temp matches 3.. run function minecraft:small_games/total/win_score {score:1}
execute if score game.leftplayer temp matches 3.. if score firstoutwins.time board matches 15.. run function minecraft:firstoutwins/speedup
tp @s 206 -22 116 0 90