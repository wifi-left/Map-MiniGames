##
## 烽火燎原开局分队（组队优先：同一个组队尽量进同一队；人数放不下时退回随机分配）
##

# 待分配人数 → 每队人数上限 = 向上取整(人数 / 2)
scoreboard players set blaze.wait.total board 0
execute as @a[team=blaze.wait,gamemode=adventure] run scoreboard players add blaze.wait.total board 1
scoreboard players set 2 board 2
scoreboard players operation blaze.wait.perteammax board = blaze.wait.total board
scoreboard players operation blaze.wait.perteammax board /= 2 board
scoreboard players operation blaze.wait.rem board = blaze.wait.total board
scoreboard players operation blaze.wait.rem board %= 2 board
execute if score blaze.wait.rem board matches 1.. run scoreboard players add blaze.wait.perteammax board 1

execute as @a[team=blaze.wait,gamemode=adventure] run function minecraft:blaze/before/random_team_per
