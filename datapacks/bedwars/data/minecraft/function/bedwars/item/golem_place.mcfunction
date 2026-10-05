# 铁傀儡守卫：刚放下的傀儡 → 校验 → 转入常驻（执行者 = 傀儡）
# 傀儡自带 PlayerCreated:0b（否则铁傀儡永远不打玩家），见 item/give_golem

# ① 兜底：统计没触发（没拿到队伍标签）→ 改按「最近的玩家」所在队归属，并打明显提示
#    计数器：/scoreboard players get bw.golem.fb board
execute if entity @s[tag=bw.golem.noface] run scoreboard players add bw.golem.fb board 1
execute if entity @s[tag=bw.golem.noface] run tellraw @a[tag=bw.player] ["§8[§e起床调试§8] §7铁傀儡走了§e兜底检测§7：没识别到放置者，改按最近玩家所在队归属"]
execute if entity @s[tag=bw.golem.noface] at @s as @a[tag=bw.play,sort=nearest,limit=1,team=bw.blue] run team join bw.blue @e[tag=bw.golem.spawn,limit=1]
execute if entity @s[tag=bw.golem.noface] at @s as @a[tag=bw.play,sort=nearest,limit=1,team=bw.red] run team join bw.red @e[tag=bw.golem.spawn,limit=1]
execute if entity @s[tag=bw.golem.noface] at @s as @a[tag=bw.play,sort=nearest,limit=1,team=bw.yellow] run team join bw.yellow @e[tag=bw.golem.spawn,limit=1]
execute if entity @s[tag=bw.golem.noface] at @s as @a[tag=bw.play,sort=nearest,limit=1,team=bw.green] run team join bw.green @e[tag=bw.golem.spawn,limit=1]

# ② 常驻化
tag @s remove bw.golem.noface
tag @s remove bw.golem.spawn
tag @s add bw.golem
scoreboard players set @s board 0
# 攻击力：用原生伤害（铁傀儡一拳约 15），不做覆盖；万一实测不生效，把 bw.golem.mode 设成 1 走指令补刀
# 血量：铁傀儡原生 100 点，这里降到 20（先改上限，再把当前血量一起压下来）
attribute @s minecraft:max_health base set 20
data merge entity @s {Health:20f}
# 索敌：anger_end_time 用一个极大的 long，省掉每次续期（anger 目标每秒由 golem_second 刷新）
data modify entity @s anger_end_time set value 9223372036854775807L

# ③ 每队上限 3 只，超出时移除年龄最大的一只
function minecraft:bedwars/item/golem_cap {t:"blue"}
function minecraft:bedwars/item/golem_cap {t:"red"}
function minecraft:bedwars/item/golem_cap {t:"yellow"}
function minecraft:bedwars/item/golem_cap {t:"green"}
