##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
# 商店② 重锤 -41（经验模式）：4 钻石 + 1800 经验（= 6 绿宝石）
# 两种货币都够才算成功；只发一次失败提示与一次失败音
tag @s add bw.buy.ok
execute unless score @s bw.tmp.dm matches 4.. run tag @s remove bw.buy.ok
execute unless score @s xp matches 1800.. run tag @s remove bw.buy.ok

execute as @s[tag=bw.buy.ok] run clear @s diamond 4
execute as @s[tag=bw.buy.ok] run xp add @s -1800 levels
execute as @s[tag=bw.buy.ok] run tellraw @s ["§a你购买了 §f重锤 §7× 1"]
execute as @s[tag=bw.buy.ok] run give @s mace[item_name="重锤",can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}]]

tellraw @s[tag=!bw.buy.ok] ["§c你的资源不够买这个东西！"]
playsound minecraft:entity.enderman.teleport player @s[tag=!bw.buy.ok] ~ ~ ~ 1 0 1
tag @s remove bw.buy.ok
