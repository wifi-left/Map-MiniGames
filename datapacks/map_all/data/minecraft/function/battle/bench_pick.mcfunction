##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 奇数人数时先挑一人去旁观，凑成偶数（Battle Box 要求两队人数相等）—— 由 teststart_total 调用
# 优先挑「散人」（没进任何组队，即没有 team.id 的玩家），尽量不把某个组队拆散；
# 全员都在组队里时（没有人能被单独挑走）才退回原来的随机挑一个。
tag @a remove battle.solo
execute as @a[team=wait.battle,gamemode=adventure] unless score @s team.id matches 1.. run tag @s add battle.solo
execute if entity @a[tag=battle.solo] run tag @r[tag=battle.solo] add battle.bench
execute unless entity @a[tag=battle.solo] run tag @r[team=wait.battle,gamemode=adventure] add battle.bench
execute as @a[tag=battle.bench] run function minecraft:battle/spec_not_fair
tag @a remove battle.solo
tag @a remove battle.bench
