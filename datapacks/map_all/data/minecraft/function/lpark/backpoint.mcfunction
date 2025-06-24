##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add park.sel
execute as @e[type=marker,tag=lpark] at @s if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid rotated ~ 0 run tag @s add totpsel
execute as @e[tag=totpsel] at @s run tp @a[tag=park.sel] ~ ~ ~
execute unless entity @e[tag=totpsel] in parkourworld run tp @s 8 4 8 0 0
tag @e[tag=totpsel] remove totpsel
tag @a[tag=park.sel] remove park.sel
tellraw @s ["§a[记录点] §b你已返回记录点！\n",{"text":"§d[Back]","click_event":{"action":"run_command","command":"/trigger parkour set 1"},"hover_event":{"action":"show_text","value":"§b[信息] 你将会返回记录点"}}," ",{"text":"§e[Delete]","click_event":{"action":"run_command","command":"/trigger parkour set 3"},"hover_event":{"action":"show_text","value":"§e[警告] 你的所有的记录点都将消失！"}}," ",{"text":"§c[Reset]","click_event":{"action":"run_command","command":"/trigger parkour set 2"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！"}}," ",{"text":"§6[Cancel]","click_event":{"action":"run_command","command":"/trigger hub"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！跑酷也将取消。"}}]
# effect give @s slow_falling 1 255 true

# playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute at @s run playsound ui.button.click player @s ~ ~ ~ 10 1 1


