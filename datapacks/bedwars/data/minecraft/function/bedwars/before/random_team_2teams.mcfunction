##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

# 待分配玩家已经分完（同一个组队会一次带走多人，剩下的轮次无事可做）
execute unless entity @a[team=bw.wait,tag=!GLOBAL.SPEC] run return 0

function minecraft:bedwars/before/count_team_players
## 寻找人数最少的队伍 存储在bw.team.random board
scoreboard players set bw.team.random board -1
scoreboard players operation bw.team.least tick = bw.blue tick
scoreboard players operation bw.team.least tick < bw.red tick

execute if score bw.team.random board matches -1 if score bw.team.least tick = bw.blue tick run scoreboard players set bw.team.random board 1
execute if score bw.team.random board matches -1 if score bw.team.least tick = bw.red tick run scoreboard players set bw.team.random board 0
execute if score bw.team.random board matches -1 run scoreboard players set bw.team.random board 0

# 目标队空位 = 每队人数上限（在 resetover 里按“开局总人数”算好）− 最少人那队的人数
scoreboard players operation team.room board = team.cap board
scoreboard players operation team.room board -= bw.team.least tick

# 组队优先：本批要分配的人（同一个组队放得下就整队一起，放不下就退回逐人随机）
data modify storage minecraft:team_tmp squad set value {sel:"@a[team=bw.wait,tag=!GLOBAL.SPEC]"}
function minecraft:team/api/party_pick with storage minecraft:team_tmp squad
execute if score bw.team.random board matches 0..0 run team join bw.red @a[tag=team.batch]
execute if score bw.team.random board matches 1..1 run team join bw.blue @a[tag=team.batch]
tag @a[tag=team.batch] remove team.batch


