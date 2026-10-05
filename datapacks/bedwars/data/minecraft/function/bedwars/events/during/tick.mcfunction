# 事件时间表的「每秒刷新 + 到点跳转」
# 时间表（总 31:00）：
#   0 钻石升级 I   (6:00) → 钻石 48s → 36s
#   1 绿宝石升级 I (3:00) → 绿宝石 60s → 50s
#   2 钻石升级 II  (3:00) → 36s → 28s
#   3 绿宝石升级 II(3:00) → 50s → 40s
#   4 钻石升级 III (3:00) → 28s → 20s
#   5 绿宝石升级 III(3:00) → 40s → 30s
#   6 床破坏       (5:00) → 所有床消失
#   7 最终对决     (5:00) → 每支存活队伍刷一只凋灵
#   8.. 平局       → after/over_timeout

## 1) bossbar 文案：显示「即将发生的事件 + 剩余秒数」
execute if score bw.event state matches 0 run bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7b钻石\u00a7e速度升级 I: ",{"score":{"name":"bw.event.countdown","objective":"board"},"color":"light_purple"},"\u00a7es"]
execute if score bw.event state matches 1 run bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7a绿宝石\u00a7e速度升级 I: ",{"score":{"name":"bw.event.countdown","objective":"board"},"color":"light_purple"},"\u00a7es"]
execute if score bw.event state matches 2 run bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7b钻石\u00a7e速度升级 II: ",{"score":{"name":"bw.event.countdown","objective":"board"},"color":"light_purple"},"\u00a7es"]
execute if score bw.event state matches 3 run bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7a绿宝石\u00a7e速度升级 II: ",{"score":{"name":"bw.event.countdown","objective":"board"},"color":"light_purple"},"\u00a7es"]
execute if score bw.event state matches 4 run bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7b钻石\u00a7e速度升级 III: ",{"score":{"name":"bw.event.countdown","objective":"board"},"color":"light_purple"},"\u00a7es"]
execute if score bw.event state matches 5 run bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7a绿宝石\u00a7e速度升级 III: ",{"score":{"name":"bw.event.countdown","objective":"board"},"color":"light_purple"},"\u00a7es"]
execute if score bw.event state matches 6 run bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c床破坏: ",{"score":{"name":"bw.event.countdown","objective":"board"},"color":"light_purple"},"\u00a7es"]
execute if score bw.event state matches 7 run bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c最终对决: ",{"score":{"name":"bw.event.countdown","objective":"board"},"color":"light_purple"},"\u00a7es"]
execute if score bw.event state matches 8.. run bossbar set minigames:bedwars name ["\u00a7f\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c平局: ",{"score":{"name":"bw.event.countdown","objective":"board"},"color":"light_purple"},"\u00a7es"]

## 2) 进度条 = 本阶段已经过的时间
execute store result score bw.event.time tick run bossbar get minigames:bedwars max
scoreboard players operation bw.event.time tick -= bw.event.countdown board
execute store result bossbar minigames:bedwars value run scoreboard players get bw.event.time tick

## 3) 倒计时到点 → 触发下一个事件（各自负责设置再下一个阶段的倒计时与预告）
execute if score bw.event.countdown board matches ..0 if score bw.event state matches 0 run function bedwars/events/up_diamond1
execute if score bw.event.countdown board matches ..0 if score bw.event state matches 1 run function bedwars/events/up_emerald1
execute if score bw.event.countdown board matches ..0 if score bw.event state matches 2 run function bedwars/events/up_diamond2
execute if score bw.event.countdown board matches ..0 if score bw.event state matches 3 run function bedwars/events/up_emerald2
execute if score bw.event.countdown board matches ..0 if score bw.event state matches 4 run function bedwars/events/up_diamond3
execute if score bw.event.countdown board matches ..0 if score bw.event state matches 5 run function bedwars/events/up_emerald3
execute if score bw.event.countdown board matches ..0 if score bw.event state matches 6 run function bedwars/events/bedgone
execute if score bw.event.countdown board matches ..0 if score bw.event state matches 7 run function bedwars/events/final
execute if score bw.event.countdown board matches ..0 if score bw.event state matches 8.. run function bedwars/events/overgame
