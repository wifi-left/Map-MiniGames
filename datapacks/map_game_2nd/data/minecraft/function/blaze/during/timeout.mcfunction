title @a[tag=blaze.player] title ["\u00a7c\u00a7l时间到！"]
title @a[tag=blaze.player] subtitle ["倒计时结束。"]
tellraw @a[tag=blaze.player] ["\n \u00a7c\u00a7l时间到！\u00a7f\u00a7l倒计时结束。\n"]
execute as @a[tag=blaze.player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0 1
scoreboard players set blaze.time board -1

execute if score blaze.state state matches 2..10 if score blaze.mode board matches 2 run function minecraft:blaze/during/pvp_calc
execute if score blaze.state state matches 2..10 if score blaze.mode board matches 3 run function minecraft:blaze/during/check_or_next
execute if score blaze.state state matches 2..10 if score blaze.mode board matches 1 run function minecraft:blaze/during/check_or_next

execute if score blaze.state state matches 1 run function minecraft:blaze/before/true_start
execute if score blaze.state state matches 11 run function minecraft:blaze/during/round_start
