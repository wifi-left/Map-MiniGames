##
## 统一 API：多人游戏“仅队长可加入 + 队长自动拉人”
##
## 用法（放在多人游戏 join.mcfunction 顶部）：
##   execute store result score tmp.team.canjoin board run function minecraft:team/api/can_join {game:"battle",join:"function battle/join",pull:1b}
##   execute if score tmp.team.canjoin board matches 0 run return 0
##
## 返回：1 = 允许加入（函数继续执行），0 = 拦截（调用方应 return 0 中止）
## 参数：game 游戏ID（仅作标识）／ join 该游戏的加入命令 ／ pull 是否拉人（1b=拉，0b=不拉）
##   pull:0b 用于有人数上限的游戏（如棋类），只拦截、不拉人
## 游戏名由各游戏自己的 join 负责显示，本 API 不需要显示名
##
## 单人游戏（跑酷、飞行大赛、桌游、拆弹等）不要调用本 API —— 队员可自由加入且不会被拉入
##
## 管理员在菜单里禁用组队功能时（team.disabled=1），本 API 一律放行：不再限制“仅队长可加入”，也不拉人
##

# 参数写入 storage（供后续非宏判断与拉人使用）
$data modify storage minecraft:team_tmp api set value {game:"$(game)",join:"$(join)",pull:$(pull)}

# 0）管理员禁用了组队功能：不再有任何组队限制，也不拉人（否则被禁用的队伍会把队员卡在游戏外）
execute if score team.disabled board matches 1 run return 1

# 1）只对“从大厅主动发起”的加入生效：游戏内被引擎调用（如小游戏派对切图、重新加入）一律放行
execute unless entity @s[team=lobby] unless entity @s[tag=GLOBAL.SPEC] run return 1

# 2）未组队：不受限制
execute unless score @s team.id matches 1.. run return 1

# 3）自己是队长：先把大厅内的队员拉进来，再放行自己
execute if score @s team.role matches 1 run return run function minecraft:team/api/pull_leader

# 4）正在被拉入的队员：放行（否则会递归拉人）
execute if entity @s[tag=team.pulling] run return 1

# 5）队长不在线：放行（避免队长离线时队员完全无法加入游戏）
scoreboard players operation tmp.team.tid board = @s team.id
scoreboard players set tmp.team.leaderonline board 0
execute as @a[scores={team.role=1}] if score @s team.id = tmp.team.tid board run scoreboard players set tmp.team.leaderonline board 1
execute if score tmp.team.leaderonline board matches 0 run return 1

# 6）其余队员：拦截
tellraw @s ["\n§c只有队长可以加入多人游戏。\n§7队长加入后会自动把队员一起拉进游戏。\n"]
playsound block.anvil.land player @s ~ ~ ~ 1 1 0
return 0
