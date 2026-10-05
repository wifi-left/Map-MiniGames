scoreboard players remove bw.em board 1
scoreboard players remove bw.dm board 1

execute if score bw.em board matches ..0 as @e[type=marker,tag=emerald] at @s run function minecraft:bedwars/summont/emerald

scoreboard players set 20 board 20
scoreboard players operation bw.em.second board = bw.em board
scoreboard players operation bw.dm.second board = bw.dm board
scoreboard players operation bw.em.second board /= 20 board
scoreboard players operation bw.dm.second board /= 20 board

data modify block -307 74 207 front_text.messages[0] set value ["\u00a7e将在",{"score":{"objective":"board","name":"bw.em.second"},"color":"red"},"\u00a7e秒后产生"]
data modify block -307 74 207 front_text.messages[1] set value ["\u00a7e将在",{"score":{"objective":"board","name":"bw.dm.second"},"color":"red"},"\u00a7e秒后产生"]
execute as @e[type=text_display,tag=emerald.subtitle] at @s run data modify entity @s text set from block -307 74 207 front_text.messages[0]
execute as @e[type=text_display,tag=diamond.subtitle] at @s run data modify entity @s text set from block -307 74 207 front_text.messages[1]

execute if score bw.dm board matches ..0 as @e[type=marker,tag=diamond] at @s run function minecraft:bedwars/summont/diamond

# ---------------------------------------------------------------------------
# 铁 / 金 / 锻造炉绿宝石：按团队各自计时（锻造炉只影响本队基地）
# 顺序沿用原来的写法：先触发 → 再按间隔重置 → 最后递减，所以开局第一颗资源立刻产出
# 铁/金：标签 bw.gen.<队> 由 resets/gen_team_tag.mcfunction 打上
# 锻造炉绿宝石：刷在本队 gold 生成点上，只有在锻造炉 III 档以上（bw.set.ef 被设成非 0）才产
# ---------------------------------------------------------------------------

# 触发
execute as @e[tag=iron,tag=bw.gen.red] at @s if score bw.ir.red board matches ..0 run function minecraft:bedwars/summont/iron
execute as @e[tag=gold,tag=bw.gen.red] at @s if score bw.gd.red board matches ..0 run function minecraft:bedwars/summont/gold
execute as @e[tag=gold,tag=bw.gen.red] at @s if score bw.set.ef.red board matches 1.. if score bw.ef.red board matches ..0 run function minecraft:bedwars/summont/emerald

execute as @e[tag=iron,tag=bw.gen.blue] at @s if score bw.ir.blue board matches ..0 run function minecraft:bedwars/summont/iron
execute as @e[tag=gold,tag=bw.gen.blue] at @s if score bw.gd.blue board matches ..0 run function minecraft:bedwars/summont/gold
execute as @e[tag=gold,tag=bw.gen.blue] at @s if score bw.set.ef.blue board matches 1.. if score bw.ef.blue board matches ..0 run function minecraft:bedwars/summont/emerald

execute as @e[tag=iron,tag=bw.gen.yellow] at @s if score bw.ir.yellow board matches ..0 run function minecraft:bedwars/summont/iron
execute as @e[tag=gold,tag=bw.gen.yellow] at @s if score bw.gd.yellow board matches ..0 run function minecraft:bedwars/summont/gold
execute as @e[tag=gold,tag=bw.gen.yellow] at @s if score bw.set.ef.yellow board matches 1.. if score bw.ef.yellow board matches ..0 run function minecraft:bedwars/summont/emerald

execute as @e[tag=iron,tag=bw.gen.green] at @s if score bw.ir.green board matches ..0 run function minecraft:bedwars/summont/iron
execute as @e[tag=gold,tag=bw.gen.green] at @s if score bw.gd.green board matches ..0 run function minecraft:bedwars/summont/gold
execute as @e[tag=gold,tag=bw.gen.green] at @s if score bw.set.ef.green board matches 1.. if score bw.ef.green board matches ..0 run function minecraft:bedwars/summont/emerald

execute as @e[tag=gold] at @s run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=diamond] at @s run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=iron] at @s run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks
execute as @e[tag=emerald] at @s run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air replace #minecraft:bedblocks

execute if score bw.dm board matches ..0 run scoreboard players operation bw.dm board = bw.set.dm board
execute if score bw.em board matches ..0 run scoreboard players operation bw.em board = bw.set.em board

# 按间隔重置
execute if score bw.ir.red board matches ..0 run scoreboard players operation bw.ir.red board = bw.set.ir.red board
execute if score bw.gd.red board matches ..0 run scoreboard players operation bw.gd.red board = bw.set.gd.red board
execute if score bw.ef.red board matches ..0 run scoreboard players operation bw.ef.red board = bw.set.ef.red board

execute if score bw.ir.blue board matches ..0 run scoreboard players operation bw.ir.blue board = bw.set.ir.blue board
execute if score bw.gd.blue board matches ..0 run scoreboard players operation bw.gd.blue board = bw.set.gd.blue board
execute if score bw.ef.blue board matches ..0 run scoreboard players operation bw.ef.blue board = bw.set.ef.blue board

execute if score bw.ir.yellow board matches ..0 run scoreboard players operation bw.ir.yellow board = bw.set.ir.yellow board
execute if score bw.gd.yellow board matches ..0 run scoreboard players operation bw.gd.yellow board = bw.set.gd.yellow board
execute if score bw.ef.yellow board matches ..0 run scoreboard players operation bw.ef.yellow board = bw.set.ef.yellow board

execute if score bw.ir.green board matches ..0 run scoreboard players operation bw.ir.green board = bw.set.ir.green board
execute if score bw.gd.green board matches ..0 run scoreboard players operation bw.gd.green board = bw.set.gd.green board
execute if score bw.ef.green board matches ..0 run scoreboard players operation bw.ef.green board = bw.set.ef.green board

# 递减
scoreboard players remove bw.ir.red board 1
scoreboard players remove bw.gd.red board 1
scoreboard players remove bw.ef.red board 1

scoreboard players remove bw.ir.blue board 1
scoreboard players remove bw.gd.blue board 1
scoreboard players remove bw.ef.blue board 1

scoreboard players remove bw.ir.yellow board 1
scoreboard players remove bw.gd.yellow board 1
scoreboard players remove bw.ef.yellow board 1

scoreboard players remove bw.ir.green board 1
scoreboard players remove bw.gd.green board 1
scoreboard players remove bw.ef.green board 1
