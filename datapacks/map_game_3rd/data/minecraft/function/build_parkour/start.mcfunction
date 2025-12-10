##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill 6 10 -49 38 10 -81 minecraft:white_wool
# /
title @a[team=build_parkour] title [{"text":"你建我跑","color":"#5ed3ff","bold": true}]
title @a[team=build_parkour] subtitle ["\u00a7e游戏将在§c3§e秒后开始 !"]
tellraw @a[team=build_parkour] ["\n§6    游戏将在§e3§6秒后开始！ ","\n"]
schedule clear minecraft:build_parkour/summon
# schedule function minecraft:build_parkour/summon 5s replace
tag @a remove build_parkour.nokiller
tag @a[team=build_parkour,gamemode=adventure] add build_parkour.nokiller
tag @a remove build_parkour.builder

tellraw @a[team=build_parkour] ["\n\u00a7a\u00a7l 你建我跑\n\u00a76\u00a7l 游戏规则\n\u00a7b 建造一个你能通过但其他人无法通过的跑酷！\n"]
scoreboard players set build_parkour.state state 2
function minecraft:build_parkour/next_round
xp set @a[team=build_parkour] 0 levels
xp set @a[team=build_parkour] 0 points