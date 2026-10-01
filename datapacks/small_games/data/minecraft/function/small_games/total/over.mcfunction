##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

schedule clear minecraft:small_games/total/next_game
schedule clear minecraft:small_games/total/get_random_game
schedule clear small_games/total/wur/startgame/a
schedule clear small_games/total/wur/startgame/b

execute if entity @a[tag=merchant.player] run return run function minecraft:merchant/during/no_small_games

tellraw @a ["§b§l小游戏派对 §2游戏结束！"]

# 结算前五名（total.rank.1 ~ total.rank.5）
scoreboard players set gametotal state 2000
function small_games/total/rank/calc

# 所有派对玩家传送到结算区，并切换为冒险模式
gamemode adventure @a[tag=play.total]
effect clear @a[tag=play.total]
clear @a[tag=play.total]
execute as @a[tag=play.total] in overworld run tp @s 275 89 134 90 0

# 前三名上传领奖台（同分并列者会站到同一位置）
execute as @a[tag=total.rank.1] in overworld run tp @s 264 93 134 -90 0
execute as @a[tag=total.rank.2] in overworld run tp @s 264 91 138 -90 0
execute as @a[tag=total.rank.3] in overworld run tp @s 264 89 130 -90 0

# 前三名：奖牌 title
title @a[tag=total.rank.1] title [{sprite:"item/gold_ingot",atlas:"items"}," ",{text:"金牌",color:"#FFD700",bold:true}]
title @a[tag=total.rank.1] subtitle [{text:"你获得了第",color:"white"},{text:"1",color:"#FFD700"},{text:"名",color:"white"}]
title @a[tag=total.rank.2] title [{sprite:"item/iron_ingot",atlas:"items"}," ",{text:"银牌",color:"#C0C0C0",bold:true}]
title @a[tag=total.rank.2] subtitle [{text:"你获得了第",color:"white"},{text:"2",color:"#C0C0C0"},{text:"名",color:"white"}]
title @a[tag=total.rank.3] title [{sprite:"item/copper_ingot",atlas:"items"}," ",{text:"铜牌",color:"#CD7F32",bold:true}]
title @a[tag=total.rank.3] subtitle [{text:"你获得了第",color:"white"},{text:"3",color:"#CD7F32"},{text:"名",color:"white"}]

# 其他派对玩家：游戏结束
title @a[tag=play.total,tag=!total.rank.1,tag=!total.rank.2,tag=!total.rank.3] title [{text:"游戏结束",color:"red"}]
title @a[tag=play.total,tag=!total.rank.1,tag=!total.rank.2,tag=!total.rank.3] subtitle [{text:"第一名：",color:"aqua"},{"selector":"@a[tag=total.rank.1]"}]

# 获胜玩家列表（最多前五名，名次不存在则不显示该行）
tellraw @a[tag=play.total] ["\n",{sprite:"item/firework_rocket",atlas:"items"}," ",{text:"小游戏派对",color:"#009966",bold:true}]
tellraw @a[tag=play.total] ["\n",{sprite:"item/gold_ingot",atlas:"items"}," ",{text:"本次获胜玩家列表：",color:"gold",bold:true}]
execute if entity @a[tag=total.rank.1] run tellraw @a[tag=play.total] [{text:"- 第一名：",color:"#FFD700"},{"selector":"@a[tag=total.rank.1]",color:"aqua"}]
execute if entity @a[tag=total.rank.2] run tellraw @a[tag=play.total] [{text:"- 第二名：",color:"#C0C0C0"},{"selector":"@a[tag=total.rank.2]",color:"aqua"}]
execute if entity @a[tag=total.rank.3] run tellraw @a[tag=play.total] [{text:"- 第三名：",color:"#CD7F32"},{"selector":"@a[tag=total.rank.3]",color:"aqua"}]
execute if entity @a[tag=total.rank.4] run tellraw @a[tag=play.total] [{text:"- 第四名：",color:"white"},{"selector":"@a[tag=total.rank.4]",color:"aqua"}]
execute if entity @a[tag=total.rank.5] run tellraw @a[tag=play.total] [{text:"- 第五名：",color:"gray"},{"selector":"@a[tag=total.rank.5]",color:"aqua"}]
tellraw @a[tag=play.total] ["\n"]

# 10s 后回到小游戏派对等待大厅（原逻辑）
schedule function small_games/total/tp 10s

return fail
