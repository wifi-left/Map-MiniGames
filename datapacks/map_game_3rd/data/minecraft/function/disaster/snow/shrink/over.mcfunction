##
## 安全区已被完全清除（缩圈到没有为止）
##
tellraw @a[team=disaster.snow] ["\n\u00a7e\u00a7l事件\n\u00a7c安全区已完全消失！\n"]
title @a[team=disaster.snow] title "\u00a7c\u00a7l安全区已完全消失"
title @a[team=disaster.snow] subtitle "\u00a7e没有立足之地了……"
execute as @a[team=disaster.snow] at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 0.5 0

## state 40 让 1_4_tick 停止落雪，但仍在 2..99 内，所以 testfor_over 照常生效
scoreboard players set disaster.snow.state state 40
scoreboard players set disaster.snow.time board -1

## 保底结算：万一还有人踩着自己放置的雪块站着，5s 后强制结束，不会卡死
schedule function minecraft:disaster/snow/over/over 5s replace
