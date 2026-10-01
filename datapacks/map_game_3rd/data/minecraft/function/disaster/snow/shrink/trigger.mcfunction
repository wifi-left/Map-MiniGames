##
## 缩圈驱动：PVP 开启后由 countdown_timeout 的 state 25 分支每 5s 调用一次。
## 步长固定 1 格、共 20 步（39x39 -> 37x37 -> ... -> 1x1 -> 空），具体 fill 见 shrink/main。
##
scoreboard players add disaster.snow.shrink board 1
scoreboard players set disaster.snow.time board 5

## 落雪生成范围跟随安全区：radius = clamp(18 - shrink, 1, 19)。
## 比安全区半径再小 1 格：落雪的 armor_stand 是按 3×3 放雪块的（break_block_placer），
## 站在边界上就会把雪补进刚挖空的那一圈里，等于白缩。
scoreboard players set disaster.snow.radius board 18
scoreboard players operation disaster.snow.radius board -= disaster.snow.shrink board
execute if score disaster.snow.radius board matches ..1 run scoreboard players set disaster.snow.radius board 1

function minecraft:disaster/snow/shrink/main

execute as @a[team=disaster.snow] at @s run playsound block.snow.break player @s ~ ~ ~ 1 0.8 0
tellraw @a[team=disaster.snow] ["\n\u00a7e\u00a7l事件\n\u00a7b安全区缩小！\n\u00a77缩圈进度：",{score:{name:"disaster.snow.shrink",objective:"board"},color:"green"},"\u00a77/20\n"]

## 沿用原 speed_on_after_pvp 的补给节奏：回血连续覆盖，道具每 30s（= 6 步）发一次
effect give @a[team=disaster.snow] regeneration 6 0 true
execute if score disaster.snow.shrink board matches 6 run execute as @a[team=disaster.snow,gamemode=adventure] run function minecraft:disaster/snow/give_item
execute if score disaster.snow.shrink board matches 12 run execute as @a[team=disaster.snow,gamemode=adventure] run function minecraft:disaster/snow/give_item
execute if score disaster.snow.shrink board matches 18 run execute as @a[team=disaster.snow,gamemode=adventure] run function minecraft:disaster/snow/give_item

## 最后一步把仅剩的 1x1 也清掉，此后场地上没有立足之地
execute if score disaster.snow.state state matches 25 if score disaster.snow.shrink board matches 20.. run return run function minecraft:disaster/snow/shrink/over
