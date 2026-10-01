##
## 在竞技场平台上随机位置生成一只木乃伊靶子
## 调用方：scene/start/fight_zombie（开局每名玩家一只）、scene/judging/kill_target（补足数量）
##
summon marker 179 23 380 {Tags:["t_says.huskspot"]}
execute as @e[tag=t_says.huskspot,type=marker] run spreadplayers 179 380 3 3 under 24 false @s
# 新版 CustomName:{text:"xxx"} 无需多加引号了
execute as @e[tag=t_says.huskspot,type=marker] at @s run summon husk ~ ~ ~ {NoAI:1b,Silent:1b,PersistenceRequired:1b,Health:5f,attributes:[{base:1.0d,id:"knockback_resistance"}],CustomName:{"text":"木乃伊","color":"yellow"},Tags:["t_says.target"]}
kill @e[tag=t_says.huskspot,type=marker]
