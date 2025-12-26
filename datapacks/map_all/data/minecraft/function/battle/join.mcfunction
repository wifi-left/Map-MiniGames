##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s title [{"text":"Battle Box","color":"white","bold": true}]
title @s subtitle ["\u00a7f与对方开启抢夺羊毛大作战！"]
gamemode adventure @s[gamemode=spectator]
team join wait.battle @s
tellraw @a[team=!wait.battle] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"Battle Box","color":"white","bold":true}," §7!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.battle,gamemode=adventure] run scoreboard players add wait.player tick 1

tellraw @a[team=wait.battle] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"},"§b/§e8§b)"]
#tp @s 14 3 -44 180 0
playsound entity.player.levelup player @s 144 28 -397 1 1 1
clear @s
effect clear @s
tp @s 144 28 -397 0 0
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

execute if score battle.state state matches 1.. run function minecraft:battle/spec


