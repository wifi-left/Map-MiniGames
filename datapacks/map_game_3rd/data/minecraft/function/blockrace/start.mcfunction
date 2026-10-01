scoreboard players set blockrace.state state 1
## 先tp走关起来
execute in minecraft:airworld run gamemode spectator @a[team=blockrace]
execute as @a[team=blockrace] run function player:clear_effect_and_item

title @a[team=blockrace] title "\u00a7a游戏准备中..."
title @a[team=blockrace] subtitle "\u00a7e请坐和放宽..."
function blockrace/try_reset
team modify blockrace friendlyFire false
