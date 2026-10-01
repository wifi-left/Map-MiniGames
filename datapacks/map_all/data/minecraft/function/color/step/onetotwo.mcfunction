##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set color.state state 3
# 每 color.dec 局减 1s（color.dec 缺省/非法时按 1 处理 = 每局都减，与老行为一致）
execute unless score color.dec state matches 1.. run scoreboard players set color.dec state 1
scoreboard players operation #color.decmod board = color.round tick
scoreboard players operation #color.decmod board %= color.dec state
# 需要能减才减：tre 还有余额、且 tt 不低于 2（减完仍 >= 1s，与 sign 里 maxtime <= time-1 的下限一致）
execute if score #color.decmod board matches 0 if score color.tre tick matches 1.. if score color.tt tick matches 2.. run scoreboard players remove color.tt tick 1
execute if score #color.decmod board matches 0 if score color.tre tick matches 1.. if score color.tt tick matches 2.. run scoreboard players remove color.tre tick 1
scoreboard players operation color.tick tick = color.tt tick
# playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0.1 1
execute as @a[team=play.color] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 2 2 1
execute if score color.tick tick matches ..2 run scoreboard players set color.tick tick 2

