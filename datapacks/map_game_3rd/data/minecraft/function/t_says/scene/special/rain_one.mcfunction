##
## 箭雨单次落箭（以玩家为上下文执行，被 scene/judging/arrow_rain 每 tick 调用）
##

# 正上方一支（站着不动必中）
summon arrow ~ ~12 ~

# 附近随机落点一支（观感用）
summon marker ~ ~ ~ {Tags:["t_says.rain"]}
execute at @s as @e[tag=t_says.rain,type=marker] run spreadplayers ~ ~ 0 5 under 22 false @s
execute as @e[tag=t_says.rain,type=marker] at @s run summon arrow ~ ~12 ~
kill @e[tag=t_says.rain,type=marker]
