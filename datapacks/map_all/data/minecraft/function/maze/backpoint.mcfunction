##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s 244.0 113 65.0 -90 0
tellraw @s ["§a[记录点] §b你已返回记录点！\n",{"text":"§d[Back]","click_event":{"action":"run_command","command":"/trigger parkour set 1"},"hover_event":{"action":"show_text","value":"§b[信息] 你将会返回记录点"}}," ",{"text":"§c[Reset]","click_event":{"action":"run_command","command":"/trigger parkour set 2"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！"}}," ",{"text":"§6[Cancel]","click_event":{"action":"run_command","command":"/trigger parkour set 4"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！迷宫进度也将取消。"}}]
effect give @s slow_falling 1 255 true
playsound ui.button.click player @s ~ ~ ~ 1 1 1

