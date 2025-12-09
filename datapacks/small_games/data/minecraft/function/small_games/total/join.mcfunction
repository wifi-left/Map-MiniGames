##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if entity @a[tag=merchant.player] run return run function minecraft:small_games/total/spec_failed

clear @s
tp @s 286 90 139 0 0
team join wait.total @s
scoreboard players set wait.player tick 0
execute as @a[team=wait.total,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @a[team=!wait.total] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"小游戏派对","color":"#afd3ff","bold":true}," §7!"]
tellraw @a[team=wait.total] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
execute if score gametotal state matches 1.. as @s run function small_games/total/spec

tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]

