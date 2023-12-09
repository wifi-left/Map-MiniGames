team modify boat prefix ["\u00a7c[O]\u00a79 冰船\u00a78 | "]
tellraw @a ["\u00a79\u00a7l冰船游戏 ＞ \u00a7a游戏结束。"]
forceload add -32 88 -102 313
function boat/over/listname
gamemode spectator @a[team=boat]
scoreboard players reset * boat.rounds
scoreboard players set boat.state state 10
schedule function boat/over/tp 6s replace
tellraw @a[team=boat] ["\u00a7a你已进入游戏队列，5秒后进入游戏大厅。"]
scoreboard players reset @e[tag=boat]
kill @e[tag=boat]
# kill @e[typoe]
kill @e[type=marker,tag=boat.trap]
forceload remove -32 88 -102 313
