##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
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
scoreboard players set @a[team=pw.play] drown 120
scoreboard players set @a[team=pw.play] pw.max 120
