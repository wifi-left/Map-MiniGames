##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join random_parkour @s
gamemode adventure @s[gamemode=spectator]
gamemode adventure @s[gamemode=survival]
tellraw @a [{"selector":"@s"}," \u00a7a加入了 \u00a72随机跑酷"]
title @s title ["\u00a72随机跑酷"]
tag @s remove random_parkour.win

title @s subtitle ["跑！跑！跑！"]
tellraw @s ["\n \u00a72\u00a7l随机跑酷\u00a76：跑到终点（青晶石块）\n"]
execute in parkourworld run tp @s 8 -54 229 -90 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score random_parkour.state state matches 1.. run function minecraft:random_parkour/spec
effect give @s instant_health 2 25 true

tellraw @s[tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @s[tag=GLOBAL.SPEC] at @s run gamemode spectator
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
item replace entity @s armor.feet with leather_boots[unbreakable={},tooltip_display={hide_tooltip:true},enchantments={binding_curse:1},attribute_modifiers=[{id:a,amount:100,type:"safe_fall_distance",operation:"add_value"}]]
