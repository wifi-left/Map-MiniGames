# 铁傀儡守卫：每秒刷新索敌目标与寿命（执行者 = 傀儡，位置已在傀儡上）
# 原生目标选择器用的就是 persistentAngerTarget，所以只要把最近敌人的 UUID 写进 angry_at 就会被追打
# anger_end_time 已在放下时设成极大的 long，这里只负责换目标
execute if entity @s[team=bw.blue] run data modify entity @s angry_at set from entity @a[tag=bw.play,gamemode=adventure,team=!bw.blue,distance=..24,sort=nearest,limit=1] UUID
execute if entity @s[team=bw.red] run data modify entity @s angry_at set from entity @a[tag=bw.play,gamemode=adventure,team=!bw.red,distance=..24,sort=nearest,limit=1] UUID
execute if entity @s[team=bw.yellow] run data modify entity @s angry_at set from entity @a[tag=bw.play,gamemode=adventure,team=!bw.yellow,distance=..24,sort=nearest,limit=1] UUID
execute if entity @s[team=bw.green] run data modify entity @s angry_at set from entity @a[tag=bw.play,gamemode=adventure,team=!bw.green,distance=..24,sort=nearest,limit=1] UUID

# 兜底路径：把 bw.golem.mode 设成 1 就改用「指令补刀」——若本版本吃 attribute 就别开这个
# （6 点伤害，走 mob_attack，护甲正常计算；每秒最多一次，不会瞬秒）
execute if score bw.golem.mode board matches 1 if entity @s[team=bw.blue] run damage @a[tag=bw.play,gamemode=adventure,team=!bw.blue,distance=..3,sort=nearest,limit=1] 6 minecraft:mob_attack by @s
execute if score bw.golem.mode board matches 1 if entity @s[team=bw.red] run damage @a[tag=bw.play,gamemode=adventure,team=!bw.red,distance=..3,sort=nearest,limit=1] 6 minecraft:mob_attack by @s
execute if score bw.golem.mode board matches 1 if entity @s[team=bw.yellow] run damage @a[tag=bw.play,gamemode=adventure,team=!bw.yellow,distance=..3,sort=nearest,limit=1] 6 minecraft:mob_attack by @s
execute if score bw.golem.mode board matches 1 if entity @s[team=bw.green] run damage @a[tag=bw.play,gamemode=adventure,team=!bw.green,distance=..3,sort=nearest,limit=1] 6 minecraft:mob_attack by @s

# 寿命 120 秒
scoreboard players add @s board 1
execute if score @s board matches 120.. run kill @s
