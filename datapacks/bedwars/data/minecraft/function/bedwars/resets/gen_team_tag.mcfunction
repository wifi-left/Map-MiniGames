##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 给铁/金生成器标记打上队伍标签（锻造炉是团队升级，只有铁和金分团队；钻石/绿宝石在中间，是全局的）
# 判定方式：离哪支队伍的床最近 —— 床标记每张地图都带 bw.bed.<队>，而且就在该队基地/出生点上，
# 四张床互相相距 70 格以上，所以 25 格半径不会串台
# 调用点：resets/resetover.mcfunction（此时 resets/points/<地图> 已经把标记生成好了）

# 先清掉上一局可能残留的标签
tag @e[tag=iron,tag=bw.gen.red] remove bw.gen.red
tag @e[tag=iron,tag=bw.gen.blue] remove bw.gen.blue
tag @e[tag=iron,tag=bw.gen.yellow] remove bw.gen.yellow
tag @e[tag=iron,tag=bw.gen.green] remove bw.gen.green
tag @e[tag=gold,tag=bw.gen.red] remove bw.gen.red
tag @e[tag=gold,tag=bw.gen.blue] remove bw.gen.blue
tag @e[tag=gold,tag=bw.gen.yellow] remove bw.gen.yellow
tag @e[tag=gold,tag=bw.gen.green] remove bw.gen.green

# 按「离本队的床最近」打标签（8 行 = 4 队 x 铁/金）
execute as @e[tag=bw.bed.red,limit=1] at @s as @e[tag=iron,distance=..25] run tag @s add bw.gen.red
execute as @e[tag=bw.bed.red,limit=1] at @s as @e[tag=gold,distance=..25] run tag @s add bw.gen.red
execute as @e[tag=bw.bed.blue,limit=1] at @s as @e[tag=iron,distance=..25] run tag @s add bw.gen.blue
execute as @e[tag=bw.bed.blue,limit=1] at @s as @e[tag=gold,distance=..25] run tag @s add bw.gen.blue
execute as @e[tag=bw.bed.yellow,limit=1] at @s as @e[tag=iron,distance=..25] run tag @s add bw.gen.yellow
execute as @e[tag=bw.bed.yellow,limit=1] at @s as @e[tag=gold,distance=..25] run tag @s add bw.gen.yellow
execute as @e[tag=bw.bed.green,limit=1] at @s as @e[tag=iron,distance=..25] run tag @s add bw.gen.green
execute as @e[tag=bw.bed.green,limit=1] at @s as @e[tag=gold,distance=..25] run tag @s add bw.gen.green

# 兜底提示：万一有生成器没拿到队伍标签（锻造炉对它就不生效），给附近玩家发一条明显的调试提示
execute as @e[tag=iron,tag=!bw.gen.red,tag=!bw.gen.blue,tag=!bw.gen.yellow,tag=!bw.gen.green,limit=1] at @s if entity @p[distance=..32] run tellraw @p[distance=..32] ["§8[§e起床调试§8] §7有§f铁§7生成器没打上队伍标签（锻造炉对它无效）：检查这张地图的床标记与生成器距离是否超过 25 格"]
execute as @e[tag=gold,tag=!bw.gen.red,tag=!bw.gen.blue,tag=!bw.gen.yellow,tag=!bw.gen.green,limit=1] at @s if entity @p[distance=..32] run tellraw @p[distance=..32] ["§8[§e起床调试§8] §7有§6金§7生成器没打上队伍标签（锻造炉对它无效）：检查这张地图的床标记与生成器距离是否超过 25 格"]
