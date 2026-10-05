# 蠹虫雪球：投掷者处理（执行者 = 投掷者）
# 照搭桥蛋的写法：use.snowball 统计触发时，刚投出的雪球就在玩家 3 格内
# 给它打上队伍标签与 bw.bug 标记，再挂「影子标记」；落点由影子负责生成蠹虫
execute as @s[tag=bw.play,team=bw.blue] run tag @e[distance=0..3,type=snowball,sort=nearest,limit=1] add bw.bug.blue
execute as @s[tag=bw.play,team=bw.red] run tag @e[distance=0..3,type=snowball,sort=nearest,limit=1] add bw.bug.red
execute as @s[tag=bw.play,team=bw.yellow] run tag @e[distance=0..3,type=snowball,sort=nearest,limit=1] add bw.bug.yellow
execute as @s[tag=bw.play,team=bw.green] run tag @e[distance=0..3,type=snowball,sort=nearest,limit=1] add bw.bug.green

execute as @e[distance=0..3,type=snowball,sort=nearest,limit=1,tag=bw.bug.blue] run function minecraft:bedwars/item/bug_attach
execute as @e[distance=0..3,type=snowball,sort=nearest,limit=1,tag=bw.bug.red] run function minecraft:bedwars/item/bug_attach
execute as @e[distance=0..3,type=snowball,sort=nearest,limit=1,tag=bw.bug.yellow] run function minecraft:bedwars/item/bug_attach
execute as @e[distance=0..3,type=snowball,sort=nearest,limit=1,tag=bw.bug.green] run function minecraft:bedwars/item/bug_attach

# 兜底：本队投出的雪球没找到（贴脸撞墙等）→ 计数 + 明显提示，便于定位问题
# 计数器：/scoreboard players get bw.bug.fb board
execute as @s[tag=bw.play] unless entity @e[distance=0..3,type=snowball,tag=bw.bug.blue] unless entity @e[distance=0..3,type=snowball,tag=bw.bug.red] unless entity @e[distance=0..3,type=snowball,tag=bw.bug.yellow] unless entity @e[distance=0..3,type=snowball,tag=bw.bug.green] run scoreboard players add bw.bug.fb board 1
execute as @s[tag=bw.play] unless entity @e[distance=0..3,type=snowball,tag=bw.bug.blue] unless entity @e[distance=0..3,type=snowball,tag=bw.bug.red] unless entity @e[distance=0..3,type=snowball,tag=bw.bug.yellow] unless entity @e[distance=0..3,type=snowball,tag=bw.bug.green] run tellraw @s ["§8[§e起床调试§8] §7蠹虫雪球走了§e兜底检测§7：没找到刚投出的雪球（落点可能不准）"]
