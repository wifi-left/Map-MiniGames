gamemode adventure @s
execute in overworld run tp @s 322 89 159 180 0
tellraw @s [{text:"\n"},{text:"小游戏派对",color:"#009966",bold:true}," \n\n\u00a7e⛏ \u00a7a\u00a7l请在下面的游戏中选择一个你想要参与的游戏："]
tellraw @s ["\n\u00a7e[A] ",{"nbt":"total_game_wur.a.name",storage:"minecraft:temp","color":"yellow","bold":true,interpret:true},{text:"\n",color:gold,bold:true},{nbt:"total_game_wur.a.prefix",color:green,storage:"minecraft:temp",interpret:true}," ",{nbt:"total_game_wur.a.desc",color:gray,storage:"minecraft:temp",interpret:true},"\n"]

execute unless data storage minecraft:temp total_game_wur.b{id:none} run tellraw @s ["\n\u00a79[B] ",{"nbt":"total_game_wur.b.name",storage:"minecraft:temp","color":"blue","bold":true,interpret:true},{text:"\n",color:gold,bold:true},{nbt:"total_game_wur.b.prefix",color:green,storage:"minecraft:temp",interpret:true}," ",{nbt:"total_game_wur.b.desc",color:gray,storage:"minecraft:temp",interpret:true},"\n"]

title @s title ["\u00a7b下一轮游戏"]
title @s subtitle ["请选择你想参与的游戏！"]
