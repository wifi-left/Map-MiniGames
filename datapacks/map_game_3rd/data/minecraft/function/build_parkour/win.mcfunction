##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§a你完成了跑酷！"]
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
tellraw @a[team=build_parkour] [{"selector":"@s"},"§a 完成了跑酷"]
gamemode spectator @s

execute as @s[tag=build_parkour.builder] run return run function minecraft:build_parkour/summon_runner
give @s sunflower[max_stack_size=99,rarity=epic,item_name="金币",custom_data={"parkour_race":2}] 1
tellraw @s ["\u00a7e金币 +1（完成跑酷）"]
title @s title ["\u00a7a你已完成跑酷"]
title @s subtitle ["\u00a7c请等待其他玩家完成或时间截止"]