tellraw @a[tag=blaze.player] ["\n\u00a7e 本局结束。是一个平局。\n"]
title @a[tag=blaze.player] title ["\u00a76本局游戏结束"]
title @a[tag=blaze.player] subtitle ["平局"]

scoreboard players add blaze.score.a board 1
scoreboard players add blaze.score.b board 1

function minecraft:blaze/during/check_or_next
