title @a[team=pw.wait] subtitle ["\u00a7r冬泳怪鸽"]
title @a[team=pw.wait] title ["\u00a7a\u00a7l游戏开始"]
fill -91 16 -12 -95 16 -8 minecraft:barrier
team join pw.play @a[team=pw.wait]
execute as @a[team=pw.play,gamemode=adventure] run spreadplayers -93 -10 0 12 under 12 false @s
execute as @a[team=pw.play,gamemode=adventure] run clear @s
execute as @a[team=pw.play,gamemode=adventure] run effect clear @s
execute as @a[team=pw.play,gamemode=adventure] run item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"frost_walker",lvl:1}],Unbreakable:1b,display:{color:1105614},HideFlags:63} 1 
execute as @a[team=pw.play,gamemode=adventure] run item replace entity @s container.0 with stick{Enchantments:[{id:"knockback",lvl:2}],Unbreakable:1b,display:{color:1105614},HideFlags:63} 1 
scoreboard players set pw.state state 1
scoreboard players set @a[team=pw.play] drown 120