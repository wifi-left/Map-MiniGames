title @a[tag=blaze.player] title ["\u00a7c\u00a7l烽火燎原"]
title @a[tag=blaze.player] subtitle ["\u00a7e游戏开始！"]
scoreboard players set blaze.police.state board 1
scoreboard players set blaze.round board 0
scoreboard players add @a[tag=blaze.player] blaze.coin 0
function minecraft:blaze/during/round_start

execute if score blaze.mode state matches 3 as @a[team=blaze.team.a] at @s run function minecraft:blaze/during/event/police/change_to_a
