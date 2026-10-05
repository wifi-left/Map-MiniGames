# 回城卷轴：被打断 —— 卷轴已经在开始咏唱时消耗掉了，不退还
tag @s remove bw.scrolling
scoreboard players reset @s bw.scroll.t
title @s actionbar ["§c回城被打断（卷轴已消耗）"]
playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 1 1
