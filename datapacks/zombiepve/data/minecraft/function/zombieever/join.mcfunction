##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s title [{"text":"Zombie Day","color":"dark_green","bold": true}]
title @s subtitle ["\u00a7bPre-release \u00a7ev0.3"]
team join wait.zombie @s
tellraw @a[team=!wait.zombie] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"Zombie Day","color":"dark_green","bold": true}," \u00a77!"]
scoreboard players set wait.player tick 0
execute as @a[team=wait.zombie,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n\u00a7a    Welcome to ",{"text":"Zombie Day","color":"dark_green","bold": true},"\n"]
tellraw @s ["\n\u00a7a    ",{"text":"Zombie Day","color":"dark_green","bold": true},"\n\n    \u00a7b版本：\u00a7ePre-release v0.3\n"]
tellraw @a[team=wait.zombie] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
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
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
execute as @s[tag=GOABLE.SPEC] at @s run team join play.zombie @s

tellraw @s ["\n\u00a76 您可以在\u00a7b\u00a7l菜单 - 选项 - 声音 - 地图音乐\n \u00a7e（如果未加载材质包显示为“\u00a7b\u00a7l语音\u00a7e”）\n \u00a76调整背景音乐声音大小。\n"]
