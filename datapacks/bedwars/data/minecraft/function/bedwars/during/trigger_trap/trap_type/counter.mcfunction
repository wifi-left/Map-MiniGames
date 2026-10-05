# 反击陷阱：触发者被减速，防守方全队获得短暂速度与力量
# 执行者 = 触发的敌人；bw.show.target = 防守方全队（由 trigger_trap/<team> 打上）
effect give @s slowness 4 0 true
effect give @a[tag=bw.show.target] speed 4 1 true
effect give @a[tag=bw.show.target] strength 4 0 true
title @a[tag=bw.show.target] title ["§c陷阱被触发"]
title @a[tag=bw.show.target] subtitle ["§f反击陷阱：全队获得速度与力量"]
execute as @a[tag=bw.show.target] at @s run playsound entity.polar_bear.warning player @s ~ ~ ~ 1 0 1
execute at @s run playsound entity.polar_bear.warning player @s ~ ~ ~ 1 0 1
