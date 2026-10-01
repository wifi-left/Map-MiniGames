scoreboard players set game.leftplayer temp 0
execute as @a[team=blockrace,gamemode=spectator,tag=blockrace.win] run scoreboard players add game.leftplayer temp 1
clear @s
gamemode spectator @s
title @s title "\u00a7a你抵达了终点！"
scoreboard players operation game.leftplayer.show temp = game.leftplayer temp
scoreboard players add game.leftplayer.show temp 1
title @s subtitle {translate:"你是第 %s 名",with:[{score:{name:"game.leftplayer.show",objective:temp},color:gold}]}
tellraw @a[team=blockrace] [{selector:"@s"}," \u00a76抵达了终点，得到了第 ",{score:{name:"game.leftplayer.show",objective:temp},color:aqua}," \u00a76名。"]
playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
execute if score game.leftplayer temp matches 0 run function minecraft:small_games/total/win_score {score:4}
execute if score game.leftplayer temp matches 1 run function minecraft:small_games/total/win_score {score:3}
execute if score game.leftplayer temp matches 2 run function minecraft:small_games/total/win_score {score:2}
execute if score game.leftplayer temp matches 3.. run function minecraft:small_games/total/win_score {score:1}
tag @s add blockrace.win

execute if score blockrace.state state matches 3 if score blockrace.time board matches 30.. if score game.leftplayer temp matches 3.. run function minecraft:blockrace/removetime