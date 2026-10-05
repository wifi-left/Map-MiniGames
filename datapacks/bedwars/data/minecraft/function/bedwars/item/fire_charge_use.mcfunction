# 火焰弹：使用（consumable 触发）后发射一发原版火球
# 火球自身负责伤害/击退/音效/粒子；方块破坏另外用 cmdtnt:rays 模拟（世界档 mobGriefing 已关，原版爆炸不破方块）
advancement revoke @s only minecraft:bedwars/fire_charge
execute unless entity @s[tag=bw.player] run return 0
execute if entity @s[gamemode=spectator] run return 0
function minecraft:bedwars/item/fire_charge_launch
