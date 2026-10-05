# 救援平台：在脚下一格展开 3×3 黏液台（consumable 触发时物品已经被消耗掉了）
advancement revoke @s only minecraft:bedwars/rescue_platform
execute unless entity @s[tag=bw.player] run return 0
execute if entity @s[gamemode=spectator] run return 0

# 前置判定 1：边界（3×3 + 2 格余量，含 y 轴）
# 平台落在脚下一格，所以平台层 y = floor(y)-1：游戏区域下限 -60 → 玩家 y 至少 -59；上限 y=66
execute store result score @s bw.tmp.x run data get entity @s Pos[0] 100
execute store result score @s bw.tmp.y run data get entity @s Pos[1] 100
execute store result score @s bw.tmp.z run data get entity @s Pos[2] 100
scoreboard players set @s bw.tmp.ok 0
execute if score @s bw.tmp.x matches -38900..-21900 if score @s bw.tmp.y matches -5900..6700 if score @s bw.tmp.z matches 12400..29600 run scoreboard players set @s bw.tmp.ok 1
execute if score @s bw.tmp.ok matches 0 run function minecraft:bedwars/item/platform_refuse

# 前置判定 2：脚下一格必须是空气（站在实心地板/桥面上用就是这种，避免道具白扔）
execute if score @s bw.tmp.ok matches 1 unless block ~ ~-1 ~ #minecraft:air run function minecraft:bedwars/item/platform_refuse

execute if score @s bw.tmp.ok matches 1 if block ~ ~-1 ~ #minecraft:air run function minecraft:bedwars/item/platform_place
