##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# fill 6 10 -49 38 10 -81 minecraft:white_wool
# /
title @a[team=pacman] title [{"text":"吃豆人","color":"#5ed3ff","bold": true}]
title @a[team=pacman] subtitle ["\u00a7e游戏将在§c5§e秒后开始 !"]
tellraw @a[team=pacman] ["\n§6    游戏将在§e5§6秒后开始！ ","\n"]
schedule clear minecraft:pacman/summon
# schedule function minecraft:pacman/summon 5s replace
tag @a remove pacman.nokiller
tag @a[team=pacman,gamemode=adventure] add pacman.nokiller
fill -115 -60 -289 -183 -60 -221 white_concrete replace gold_block
tellraw @a[team=pacman] ["\n\u00a7a\u00a7l PAC-MAN 吃豆人\n\u00a76\u00a7l 游戏规则\n\u00a7b 游戏开始后，请收集“豆子”（地面为金块的位置），小心被吃豆人抓到！\n"]
scoreboard players set pacman.state state 2
function minecraft:pacman/next_round
