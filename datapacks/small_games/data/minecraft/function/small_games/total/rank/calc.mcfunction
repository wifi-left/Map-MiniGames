##
## 计算本次小游戏派对的最终排名（total.rank.1 ~ total.rank.5）
## 同分并列同名次：同一分数的玩家会打上同一个名次标签
## 人数不足时后面的名次标签不存在，可以用来判断"满不满 5 人"
##

tag @a remove total.rank.pool
tag @a remove total.rank.found
tag @a remove total.rank.1
tag @a remove total.rank.2
tag @a remove total.rank.3
tag @a remove total.rank.4
tag @a remove total.rank.5

execute as @a[tag=play.total] run tag @s add total.rank.pool
# 没得分过的玩家没有 score 记录，补成 0 分，保证后面比较不会有未设置分数
scoreboard players add @a[tag=play.total] score 0

function small_games/total/rank/next {i:1}
function small_games/total/rank/next {i:2}
function small_games/total/rank/next {i:3}
function small_games/total/rank/next {i:4}
function small_games/total/rank/next {i:5}

tag @a remove total.rank.pool
tag @a remove total.rank.found
