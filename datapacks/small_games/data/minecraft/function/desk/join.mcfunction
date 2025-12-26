##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in lobby run tp @s 35 7 43 -90 0
tellraw @s ["\n§7从4000年前古埃及的塞尼特棋直至40,000年的茫茫星海，演绎于一桌之上!\n"]
title @s title [{"text":"桌游","color":"#0099CC","bold": true}]
tellraw @a[team=!wait.total] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"桌游","color":"#0099CC","bold": true}," §7!"]

title @s subtitle ["\u00a77Good Luck and Have Fun!"]
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 2 1
tag @s remove merchant.alive
team join deskgame

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

execute if score desk.state state matches 1.. run function minecraft:desk/spec
clear @s
effect clear @s
effect give @s instant_health 1 25 true