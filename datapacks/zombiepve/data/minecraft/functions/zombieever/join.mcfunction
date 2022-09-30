title @s title [{"text":"Zombie Day","color":"dark_green","bold": true}]
title @s subtitle ["\u00a7bAlpha \u00a7ev0.2"]
team join wait.zombie @s
tellraw @a[team=!wait.zombie] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"Zombie Day","color":"dark_green","bold": true}," \u00a77!"]
scoreboard players set wait.player tick 0 
execute as @a[team=wait.zombie,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @s ["\n\u00a7a    Welcome to ",{"text":"Zombie Day","color":"dark_green","bold": true},"\n"]
tellraw @s ["\n\u00a7a    ",{"text":"Zombie Day","color":"dark_green","bold": true},"\n\n    \u00a7b版本：\u00a7eAlpha v0.2\n"]
tellraw @a[team=wait.zombie] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
# tp @s -202 16 353 -90 0
playsound entity.player.levelup player @s -202 16 353 1 1 1
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
spawnpoint @s 351 90 21

# Zombies Tag: pve.zombie
tp @s 351 90 21 90 0

scoreboard players reset @s zombie.coin
tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
execute as @s[tag=GOABLE.SPEC] at @s run team join play.zombie @s