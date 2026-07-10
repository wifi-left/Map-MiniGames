execute if score bomb.allmap state matches 1 run scoreboard players add boob.level board 1
schedule clear minecraft:bomb/round/cdover
schedule clear minecraft:bomb/round/next_person
scoreboard players set boom.state state 1
tag @a[team=boom,gamemode=!creative,tag=!GLOBAL.SPEC] add boom.waittoplay
function minecraft:bomb/round/reset
tellraw @a[team=boom] ["§6地图已切换，将在5s后开始第一位玩家的操作。\n§a目标：拆除所有\u00a7e幽匿尖啸体\u00a7a、\u00a7e潜声传感器\n\u00a7b【地图\u00a7a#",{score:{name:"boob.level",objective:board}},"\u00a7b】"]
title @a[team=boom] title ["§6即将开始游戏"]
title @a[team=boom] subtitle ["§e5s后游戏即将开始 \u00a7b【地图\u00a7a#",{score:{name:"boob.level",objective:board}},"\u00a7b】"]

gamemode spectator @a[team=boom,gamemode=!creative]
execute in overworld run tp @a[team=boom,gamemode=spectator] 424 -55 626 -135 20
schedule function minecraft:bomb/round/next_person 5s

execute if score boom.state state matches 2..4 run bossbar set minecraft:boom name ["\u00a7f拆弹专家\u00a7b【地图\u00a7a#",{score:{name:"boob.level",objective:board}},"\u00a7b】"]
