scoreboard players set firstoutwins.state state 1
## 先tp走关起来
execute in airworld run gamemode spectator @a[team=firstoutwins]
execute as @a[team=firstoutwins] run function player:clear_effect_and_item

title @a[team=firstoutwins] title "\u00a7a游戏准备中..."
title @a[team=firstoutwins] subtitle "\u00a7e请坐和放宽..."
function firstoutwins/try_reset
tag @a remove firstoutwins.win