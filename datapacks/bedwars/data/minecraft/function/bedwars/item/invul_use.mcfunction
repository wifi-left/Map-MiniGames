# 无敌卷轴：3 秒免伤 + 免击退（consumable 触发时物品已经被消耗掉了）
advancement revoke @s only minecraft:bedwars/invul_scroll
execute unless entity @s[tag=bw.player] run return 0
execute if entity @s[gamemode=spectator] run return 0
tag @s add bw.invul
scoreboard players set @s bw.invul.t 3
effect give @s minecraft:resistance 3 4 true
attribute @s minecraft:knockback_resistance base set 1.0
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
tellraw @s ["§b无敌卷轴生效 §7- §f3 秒内免疫伤害与击退"]
