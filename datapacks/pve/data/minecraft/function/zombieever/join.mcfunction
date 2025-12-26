##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s title [{"text":"Zombie Day","color":"dark_green","bold": true}]
title @s subtitle ["\u00a7bPre-release \u00a7ev0.3"]
team join wait.zombie @s
tellraw @a[team=!wait.zombie] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"Zombie Day","color":"dark_green","bold":true}," §7!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.zombie,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n§a    Welcome to ",{"text":"Zombie Day","color":"dark_green","bold":true},"\n"]
tellraw @s ["\n§a    ",{"text":"Zombie Day","color":"dark_green","bold":true},"\n\n    §b版本：§ePre-release v0.3\n"]
tellraw @a[team=wait.zombie] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
# tp @s -202 16 353 -90 0
playsound entity.player.levelup player @s 630 10 -78 1 1 1
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
spawnpoint @s 630 10 -78

# Zombies Tag: pve.zombie
tp @s 351 75 21 90 0

scoreboard players reset @s zombie.coin
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
execute as @s[tag=GLOBAL.SPEC] at @s run team join play.zombie @s

tellraw @s ["\n§6 您可以在§b§l菜单 - 选项 - 声音 - 地图音乐\n §e（如果未加载材质包显示为“§b§l语音§e”）\n §6调整背景音乐声音大小。\n"]

