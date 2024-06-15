##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# say @a[tag=bw.play]
scoreboard players reset * bw.tmp.ir
scoreboard players reset * bw.tmp.gd
scoreboard players reset * bw.tmp.dm
scoreboard players reset * bw.tmp.em
scoreboard players reset * bw.axe
scoreboard players reset * bw.pickaxe
scoreboard players reset * bw.armor
tag @a remove bw.attack
tag @a remove bw.armor
tag @a remove bw.speed
tag @a remove bw.fasti
tag @a remove bw.fastii
tag @a remove bw.shears
scoreboard players set bw.state state 6
tag @a remove bw.play
gamemode spectator @a[tag=bw.player]
clear @a[tag=bw.player]
effect clear @a[tag=bw.player]
schedule function bedwars/after/tp 5s
forceload remove -216 300 -393 121
kill @e[type=item]

bossbar set minigames:bedwars value 1
bossbar set minigames:bedwars max 1
bossbar set minigames:bedwars players @a[tag=bw.player]
bossbar set minigames:bedwars name ["\u00a7e\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c游戏结束。"]

kill @e[tag=bw.entity]

scoreboard players reset @e[type=sheep,tag=bw.tntsheep]
kill @e[type=sheep,tag=bw.tntsheep]
kill @e[type=marker,tag=tntsheep.spawn]
