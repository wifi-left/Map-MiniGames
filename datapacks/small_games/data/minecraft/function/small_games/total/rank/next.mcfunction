##
## 取出还没排名的玩家中的最高分，同分者全部记为对应的名次（i = 1 ~ 5）
## 本函数是宏函数，只有含变量的那一行需要以 $ 开头
##

# -1000000 是"比任何可能分数都低"的初始值（派对分数只会累加，不会出现负分）
scoreboard players set total.rank.max board -1000000
execute as @a[tag=total.rank.pool] run scoreboard players operation total.rank.max board > @s score
tag @a remove total.rank.found
execute as @a[tag=total.rank.pool] run function small_games/total/rank/find
$tag @a[tag=total.rank.found] add total.rank.$(i)
tag @a[tag=total.rank.found] remove total.rank.pool
tag @a[tag=total.rank.found] remove total.rank.found
