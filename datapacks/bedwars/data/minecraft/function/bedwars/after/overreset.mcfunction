##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# say @a[tag=bw.play]
schedule clear bedwars/resets/mogu
schedule clear bedwars/resets/unnamed
schedule clear bedwars/resets/space
schedule clear bedwars/resets/special1
schedule clear bedwars/resets/glassworld
schedule clear bedwars/resets/siheyuan
scoreboard players reset * bw.tmp.ir
scoreboard players reset * bw.tmp.gd
scoreboard players reset * bw.tmp.dm
scoreboard players reset * bw.tmp.em
scoreboard players reset * bw.axe
scoreboard players reset * bw.pickaxe
scoreboard players reset * bw.armor
tag @a remove bw.attack
tellraw @a ["\n\u00a7f\u00a7l 起床战争 ＞ \u00a7c发生了一些问题，正在尝试修复。\n"]
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
function bedwars/after/over
forceload remove -216 300 -393 121
kill @e[type=item]
