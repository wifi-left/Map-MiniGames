# 救援平台：倒计时（每 20 tick，执行者 = 平台标记）
scoreboard players remove @s bw.pf.t 1
execute if score @s bw.pf.t matches ..0 at @s run function minecraft:bedwars/item/platform_retract
