##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set wait.player tick 0
execute as @a[team=pw.wait,gamemode=adventure] run scoreboard players add wait.player tick 1

scoreboard players set tmp board 0
execute if entity @a[team=pw.wait,tag=play.total] if score wait.player tick matches 8.. run scoreboard players set tmp board 1
execute if score tmp board matches 1.. run function minecraft:poolwar/over_toomany
execute if score tmp board matches 1.. run return 0

title @a[team=pw.wait] subtitle ["\u00a7r冬泳怪鸽"]
title @a[team=pw.wait] title ["\u00a7a\u00a7l游戏开始"]
fill -91 16 -12 -95 16 -8 minecraft:barrier
team join pw.play @a[team=pw.wait]
execute as @a[team=pw.play,gamemode=adventure] run spreadplayers -93 -10 0 12 under 12 false @s
execute as @a[team=pw.play,gamemode=adventure] run clear @s
execute as @a[team=pw.play,gamemode=adventure] run effect clear @s
execute as @a[team=pw.play,gamemode=adventure] run item replace entity @s armor.feet with leather_boots[enchantments={levels:{"minecraft:binding_curse":1,"minecraft:frost_walker":1},show_in_tooltip:false},unbreakable={show_in_tooltip:false},dyed_color={rgb:1105614}] 1
execute as @a[team=pw.play,gamemode=adventure] run item replace entity @s container.0 with stick[enchantments={levels:{"minecraft:knockback":2},show_in_tooltip:false},unbreakable={show_in_tooltip:false},dyed_color={rgb:1105614}] 1
scoreboard players set pw.state state 1
scoreboard players reset * pw.max
scoreboard players reset * drown
scoreboard players set @a[team=pw.play] drown 80
scoreboard players set @a[team=pw.play] pw.max 80
