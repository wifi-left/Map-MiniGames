# 蠹虫雪球：在影子所在位置（= 雪球精确落点）生成一只蠹虫（执行者 = 影子）
# 队伍归属由影子上的 bw.bug.<team> 标签决定；team join 之后蠹虫天然只打其它队伍
# （蠹虫是 Monster，索敌走 isAlliedTo，也就是计分板队伍判定）
summon minecraft:silverfish ~ ~ ~ {PersistenceRequired:1b,DeathLootTable:"minecraft:empty",Tags:["bw.bug","bw.bug.born"]}
execute if entity @s[tag=bw.bug.blue] run team join bw.blue @e[tag=bw.bug.born,limit=1]
execute if entity @s[tag=bw.bug.red] run team join bw.red @e[tag=bw.bug.born,limit=1]
execute if entity @s[tag=bw.bug.yellow] run team join bw.yellow @e[tag=bw.bug.born,limit=1]
execute if entity @s[tag=bw.bug.green] run team join bw.green @e[tag=bw.bug.born,limit=1]

# 兜底：影子丢了队伍标签 → 蠹虫会攻击所有人（含本队）。打诊断计数并给明显提示，便于定位
# 计数器：/scoreboard players get bw.bug.fb board
execute unless entity @s[tag=bw.bug.blue] unless entity @s[tag=bw.bug.red] unless entity @s[tag=bw.bug.yellow] unless entity @s[tag=bw.bug.green] run scoreboard players add bw.bug.fb board 1
execute unless entity @s[tag=bw.bug.blue] unless entity @s[tag=bw.bug.red] unless entity @s[tag=bw.bug.yellow] unless entity @s[tag=bw.bug.green] run tellraw @a[tag=bw.player] ["§8[§e起床调试§8] §7蠹虫雪球走了§e兜底检测§7：影子没有队伍标签，蠹虫会攻击所有人"]

tag @e[tag=bw.bug.born] remove bw.bug.born
kill @s
