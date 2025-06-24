##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function dropper/join
title @s title ["\u00a7a\u00a7lDropper"]
title @s subtitle ["\u00a7a恭喜！你已完成最后的关卡！"]
tellraw @s ["§a恭喜！你已完成最后的关卡！\n§d你的总失败次数为：",{"score":{"name":"@s","objective":"dropper.failed"},"color":"gold"}]
tellraw @a [{"selector":"@s","color":"aqua"}," §a完成了所有的§d 「星跳水立方」 §a关卡。他的总失败次数为 ",{"score":{"name":"@s","objective":"dropper.failed"},"color":"gold"},"§a 次。"]
scoreboard players set @s dropper.level 0
scoreboard players set @s dropper.failed 0
advancement grant @s only games/dropper
function dropper/save


