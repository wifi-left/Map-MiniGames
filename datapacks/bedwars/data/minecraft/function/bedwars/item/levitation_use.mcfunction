# 漂浮羽毛：长按 1 秒后生效（consumable 完成时物品已经被消耗掉了）
advancement revoke @s only minecraft:bedwars/levitation_feather
execute unless entity @s[tag=bw.player] run return 0
execute if entity @s[gamemode=spectator] run return 0
# 等级换算：商店里「跳跃提升 V」用 amplifier 4，所以等级 15 → amplifier 14
effect give @s minecraft:levitation 1 14 true
effect give @s minecraft:slow_falling 5 0 true
playsound minecraft:entity.ender_pearl.throw player @s ~ ~ ~ 1 0.7 1
title @s actionbar ["§b漂浮羽毛：上升 1 秒 + 缓降 5 秒"]
