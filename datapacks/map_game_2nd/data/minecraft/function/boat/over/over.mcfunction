##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team modify boat prefix ["\u00a7c[O]\u00a79 竞速\u00a78 | "]
tellraw @a ["§9§l竞速游戏 ＞ §a游戏结束。"]
forceload add -32 88 -102 313
function boat/over/listname
gamemode spectator @a[team=boat,gamemode=!creative]
scoreboard players reset * boat.rounds
scoreboard players set boat.state state 10
schedule function boat/over/tp 6s replace
tellraw @a[team=boat] ["§a你已进入游戏队列，5秒后进入游戏大厅。"]
scoreboard players reset @e[tag=boat]
kill @e[tag=boat]
# kill @e[typoe]
kill @e[type=marker,tag=boat.trap]
kill @e[type=marker,tag=boat.speedmarker]
kill @e[type=armor_stand,tag=boat.speedmarker]
kill @e[type=marker,tag=boat.speedmarkerroot]
kill @e[type=armor_stand,tag=boat.speedmarkerroot]
forceload remove -32 88 -102 313
forceload remove 0 0 0 0
kill @e[tag=f.tmp,type=marker]


