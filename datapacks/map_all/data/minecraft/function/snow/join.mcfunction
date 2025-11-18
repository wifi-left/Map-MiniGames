##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in overworld run tp @s -22 32 -74 -90 0
clear @s
effect clear @s
gamemode adventure @s[gamemode=!creative]
execute as @s run tellraw @a ["§a[MESSAGE] ",{"selector":"@s"},"§7 Joined §fSnow §7."]
tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator
team join wait.snow @s

execute if score snow.state state matches 1.. run function minecraft:snow/spec
