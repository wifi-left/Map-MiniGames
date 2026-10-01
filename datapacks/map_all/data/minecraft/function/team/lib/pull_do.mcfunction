##
## 被队长拉入的队员加入游戏（宏：$(join) 加入命令）
## 游戏名由各游戏自己的 join 显示
##

tellraw @s ["\n§6[队伍] §e你已被队长拉入游戏。\n"]
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
$data modify storage minecraft:team_tmp pull_cmd.command set value "$(join)"
function cmd:run_cmd with storage minecraft:team_tmp pull_cmd
