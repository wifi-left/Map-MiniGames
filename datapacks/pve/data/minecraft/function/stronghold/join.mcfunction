playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute in lobby run tp @s 195 -8 190 -90 0

##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

title @s title [{"text":"蚀界行者","color":"#FE4382","bold": true}]
title @s subtitle ["RealmCrawler"]
team join stronghold @s
tellraw @a[team=!stronghold] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"RealmCrawler","color":"#FE4382","bold":true}," §7!"]
scoreboard players set wait.player tick 0
execute as @a[team=stronghold,gamemode=!creative] run scoreboard players add wait.player tick 1
tellraw @a[team=stronghold] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]

tellraw @s ["\n§a    欢迎游玩 ",{"text":"RealmCrawler","color":"#FE4382","bold":true},"\n\n    \u00a77版本: Alpha v0.1\n"]


# tp @s -202 16 353 -90 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points

tellraw @s ["\n\u00a7b    游戏仍在持续更新制作中... 敬请期待后续更新！\n\u00a77    如出现BUG，请尽快向作者反馈。\n"]

tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator

execute if score stronghold.state state matches 1.. run function minecraft:stronghold/spec
spawnpoint @s 192 -59 135
effect give @s regeneration 2 25 true
# effect give @s  2 25 true