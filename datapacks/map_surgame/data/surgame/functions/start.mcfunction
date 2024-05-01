##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function surgame:reset/start
gamemode spectator @a[team=wait.sur]

execute if score sur.zommode state matches 0 run tellraw @a[team=wait.sur] ["\n\u00a7a ※ 竞赛模式\n\u00a7b    击败其他玩家，留到最后，即可获胜。\n"]
execute if score sur.zommode state matches 1 run tellraw @a[team=wait.sur] ["\n\u00a7c ※ 感染模式\n\u00a7b    防止被僵尸感染，活到救援到来，即可获胜。\n"]
tag @a remove sur.killedbyzom
## 状态：
# 0: 游戏结束
# 1: 游戏中
# 2: 重置中
# 3: 结束中

