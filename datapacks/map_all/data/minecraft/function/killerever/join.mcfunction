##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s title [{"text":"密室杀手","color":"red","bold": true}]
title @s subtitle ["\u00a7r小心！ 杀手也许就在你身边！"]
team join wait.killer @s
tellraw @a[team=!wait.killer] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"密室杀手","color":"red","bold":true}," §7!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.killer,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n§a    Welcome to ",{"text":"密室杀手","color":"red","bold":true},"\n"]
tellraw @a[team=wait.killer] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
tp @s -237 -45 -284 90 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
clear @s
effect clear @s
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

execute if score killer.state state matches 1.. run function minecraft:killerever/spec
xp set @s 0 levels
xp set @s 0 points