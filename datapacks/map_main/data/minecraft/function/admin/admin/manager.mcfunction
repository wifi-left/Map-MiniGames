##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n",{"text":"[＜ 返回上级]","color":"light_purple","click_event":{"action":"run_command","command":"/function minecraft:admin/main"}}," §e§l管理员管理\n§7此管理员仅可以操作开始游戏。"]
tellraw @s [{"text":"[添加自己为管理员]","color":"green","click_event":{"action":"run_command","command":"/function admin/addme"}}]
tellraw @s [{"text":"[管理员列表]","color":"gold","click_event":{"action":"run_command","command":"/function admin/admin/listops"}}]
tellraw @s [{"text":"[添加管理员]","color":"aqua","click_event":{"action":"run_command","command":"/function admin/admin/listnew"}}]
tellraw @s [""]
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

