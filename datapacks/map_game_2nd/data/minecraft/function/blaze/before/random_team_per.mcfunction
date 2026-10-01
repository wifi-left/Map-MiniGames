##
## 分配一批人到当前人数较少的一队（组队优先：整队放得下就整队一起，放不下只分一人）
##

# 待分配玩家已经分完（同一个组队会一次带走多人，剩下的轮次无事可做）
execute unless entity @a[team=blaze.wait,gamemode=adventure] run return 0

# 两队当前人数
scoreboard players set blaze.count.a board 0
execute as @a[team=blaze.team.a] run scoreboard players add blaze.count.a board 1
scoreboard players set blaze.count.b board 0
execute as @a[team=blaze.team.b] run scoreboard players add blaze.count.b board 1

# 目标队 = 人少的那一队（两队一样多时进 A）；team.room = 该队还能再放几人
scoreboard players set blaze.target board 1
scoreboard players operation team.room board = blaze.wait.perteammax board
scoreboard players operation team.room board -= blaze.count.a board
execute if score blaze.count.b board < blaze.count.a board run scoreboard players set blaze.target board 2
execute if score blaze.count.b board < blaze.count.a board run scoreboard players operation team.room board = blaze.wait.perteammax board
execute if score blaze.count.b board < blaze.count.a board run scoreboard players operation team.room board -= blaze.count.b board

# 选出本批要分配的人
data modify storage minecraft:team_tmp squad set value {sel:"@a[team=blaze.wait,gamemode=adventure]"}
function minecraft:team/api/party_pick with storage minecraft:team_tmp squad

# 分队并传送到该队出生点
execute if score blaze.target board matches 1 as @a[tag=team.batch] run function minecraft:blaze/before/join/a
execute if score blaze.target board matches 2 as @a[tag=team.batch] run function minecraft:blaze/before/join/b
tag @a[tag=team.batch] remove team.batch
