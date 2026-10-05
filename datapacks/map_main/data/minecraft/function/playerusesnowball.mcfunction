##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 「投出雪球 = 发射火球」是 map_main 里一条全局机制：main.mcfunction 下一行会
# `execute as @a[scores={fireball=1..}] run function snowtofire`，并顺手 kill 掉附近的雪球。
# 蠹虫雪球只是用雪球当弹体的召唤道具，绝不能变成火球 —— 在它被 snowtofire 接走之前把分数清掉。
# 判据用两条一起兜：① 正在一局起床战争里（bw.play）② 或者刚投出的雪球带着我们的 bw_bug 标记
execute as @s[tag=bw.play] run scoreboard players reset @s fireball
execute if entity @e[distance=0..3,type=snowball,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{bw_bug:1}}}}] run scoreboard players reset @s fireball

execute as @s[tag=bw.player] at @s run function bedwars/item/playersnowball
scoreboard players reset @s use.snowball
