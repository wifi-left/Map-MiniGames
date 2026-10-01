##
## 组队优先的“本批分配对象”选择（供各游戏开局分队调用）
##
## 用法：宏只需一个扁平键 sel（本局待分配玩家的选择器）；
##       调用前把“目标队伍还能再放几个人”写进 team.room，调用后对带 team.batch 标签的人执行分队：
##   scoreboard players operation team.room board = <目标队空位数>
##   data modify storage minecraft:team_tmp squad set value {sel:"@a[team=bw.wait,tag=!GLOBAL.SPEC]"}
##   function minecraft:team/api/party_pick with storage minecraft:team_tmp squad
##   team join <目标队> @a[tag=team.batch]
##   tag @a[tag=team.batch] remove team.batch
##
## 规则：优先挑“整队放得下”的组队整队一起分；没有这种组队时随机挑一个散人分一人。
##   · 整队放得下（整队人数 ≤ team.room）→ 整队一起分进目标队（同队优先）
##   · 放不下（人数不够 / 会破坏人数均匀）→ 退回逐人随机分配，并提示一句
## 调用方每次只把这一批人分进“当前最少人的那一队”，配合 team.room（该队空位）即可保证
## 每队人数不超过上限；团队人数上限请按“开局总人数”算好传给 team.room，不要按剩余人数递减。
## team.room 缺失或不大于 0 时按 1 处理（等价于改造前的“一次分一人”）。
##

# 候选池转成内部标签，屏蔽各游戏选择器写法的差异
tag @a remove team.q
tag @a remove team.batch
tag @a remove team.ok
$tag $(sel) add team.q
execute unless entity @a[tag=team.q] run return 0

# 目标队空位数（缺失或 ≤0 时按 1）
scoreboard players set tmp.team.room2 board 1
execute if score team.room board matches 1.. run scoreboard players operation tmp.team.room2 board = team.room board

# 先标记“整队放得下”的组队成员：分配时优先让他们整队成队。
# 否则散人可能先把队伍占满，组队抽到得晚反而被拆开 —— 明明放得下却同不了队。
execute as @a[tag=team.q] run function minecraft:team/lib/party_ok

# 挑种子：优先从“整队放得下”的人里挑；没有这样的组队时才随机挑（多半是散人）
tag @a remove team.seed
execute if entity @a[tag=team.ok] run tag @r[tag=team.ok] add team.seed
execute unless entity @a[tag=team.seed] run tag @r[tag=team.q] add team.seed

# 种子的组队编号（没有队伍或没有分数 → 0）
scoreboard players set tmp.team.pid board 0
execute store result score tmp.team.pid board run scoreboard players get @a[tag=team.seed,limit=1] team.id

# 这个组队在“本批待分配玩家”里有几个人（已经分完队的队友不算）
scoreboard players set tmp.team.squad board 0
execute if score tmp.team.pid board matches 1.. as @a[tag=team.q] if score @s team.id = tmp.team.pid board run scoreboard players add tmp.team.squad board 1

# 放得下 → 整队一起；放不下或没组队 → 只分这一人
execute if score tmp.team.pid board matches 1.. if score tmp.team.squad board <= tmp.team.room2 board as @a[tag=team.q] if score @s team.id = tmp.team.pid board run tag @s add team.batch
execute unless score tmp.team.pid board matches 1.. run tag @a[tag=team.seed] add team.batch
execute if score tmp.team.pid board matches 1.. if score tmp.team.squad board > tmp.team.room2 board run tag @a[tag=team.seed] add team.batch
execute if score tmp.team.pid board matches 1.. if score tmp.team.squad board > tmp.team.room2 board run tellraw @a[tag=team.seed] ["§7[组队] 本局人数不足以让全队同队，将随机分配。\n"]

# 收尾
tag @a remove team.q
tag @a remove team.ok
tag @a remove team.seed
