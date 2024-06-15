team join wait.sw @a[team=play.sw]
gamemode spectator @a[team=wait.sw]
scoreboard players set sw.state state 100
function minecraft:cloud/reset
tellraw @a ["\u00a7a\u00a7l[MESSAGE] \u00a7f云端争霸\u00a7a游戏开始。"]