scoreboard players set sw.state state 101
schedule function minecraft:cloud/over/tp 5s
kill @e[tag=sw.marker,type=marker]
kill @e[tag=sw.marker,type=text_display]
execute positioned 688 -1 352 run kill @e[type=item,distance=0..200]
gamemode spectator @a[team=play.sw,gamemode=survival]
execute positioned 688 -1 352 run kill @e[type=tnt,distance=0..200]
execute positioned 688 -1 352 run kill @e[type=tnt_minecart,distance=0..200]
execute positioned 688 -1 352 run kill @e[type=creeper,distance=0..200]
execute positioned 688 -1 352 run kill @e[type=fireball,distance=0..200]
execute in airworld run forceload remove 599 266 780 442
scoreboard players set cloud.step board 0
scoreboard players set cloud.countdown board -1
tag @a[tag=sw.msg] remove sw.msg
tellraw @a ["\u00a7a\u00a7l[MESSAGE] \u00a7f云端争霸\u00a7c游戏结束。"]
