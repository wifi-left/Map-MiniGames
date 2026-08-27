title @s title "\u00a7a成功了"

scoreboard players operation temp.speed temp = @s bw.bridge.count.wool
scoreboard players set 100 temp 100
scoreboard players set 2000 temp 2000
scoreboard players operation temp.speed temp *= 2000 temp
scoreboard players operation temp.speed temp /= @s parkour.tick

scoreboard players operation temp.speed.dot temp = temp.speed temp
scoreboard players operation temp.speed.integer temp = temp.speed temp

scoreboard players operation temp.speed.integer temp /= 100 temp
scoreboard players operation temp.speed.dot temp %= 100 temp
title @s subtitle ["\u00a7b平均搭桥速度：",{score:{objective:temp,name:temp.speed.integer},color:yellow},"\u00a7e.",{score:{objective:temp,name:temp.speed.dot},color:yellow},"\u00a76 blocks/s"]

function minecraft:bridge_practice/display_time
tag @s remove bw.bridge.started
function minecraft:bridge_practice/clear_bridge
function minecraft:bridge_practice/back
scoreboard players reset @s bw.bridge.count.wool
scoreboard players reset @s parkour.tick

tellraw @s ["\u00a7b平均搭桥速度：",{score:{objective:temp,name:temp.speed.integer},color:yellow},"\u00a7e.",{score:{objective:temp,name:temp.speed.dot},color:yellow},"\u00a76 blocks/s"]
