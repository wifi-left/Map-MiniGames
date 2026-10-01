# 调试：清掉自己的记录点（写法同大厅跑酷 npark/delect）
scoreboard players reset @s park.x
scoreboard players reset @s park.y
scoreboard players reset @s park.z
tellraw @s ["§b[DEBUG] 你的随机跑酷记录点已清除（现在掉下去会回起点）"]
playsound minecraft:ui.button.click player @s ~ ~ ~ 10 1 1
