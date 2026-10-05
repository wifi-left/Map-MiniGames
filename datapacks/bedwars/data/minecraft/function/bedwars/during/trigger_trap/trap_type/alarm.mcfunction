# 警报陷阱：全队收到提示，触发者显形
# 执行者 = 触发的敌人；bw.show.target = 防守方全队（由 trigger_trap/<team> 打上）
effect give @s glowing 10 0 true
title @a[tag=bw.show.target] title ["§c警报：敌人进入基地"]
title @a[tag=bw.show.target] subtitle ["§f触发者：",{"selector":"@s"}]
execute as @a[tag=bw.show.target] at @s run playsound block.bell.use player @s ~ ~ ~ 1 0.6 1
execute at @s run playsound block.bell.use player @s ~ ~ ~ 1 0.6 1
