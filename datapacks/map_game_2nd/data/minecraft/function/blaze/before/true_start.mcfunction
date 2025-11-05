scoreboard players set blaze.state state 2
title @a[tag=blaze.player] title ["\u00a7c\u00a7l烽火燎原"]
title @a[tag=blaze.player] subtitle ["\u00a7e游戏开始！"]
execute as @a[team=blaze.team.a] in killerworld run function minecraft:blaze/during/tp/a
execute as @a[team=blaze.team.b] in killerworld run function minecraft:blaze/during/tp/b
execute if score blaze.mode state matches 3 run function minecraft:blaze/during/event/police/change_to_a