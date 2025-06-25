##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1
tellraw @s ["\n§b ※ §6§l管理员菜单\n"]
tellraw @s ["§e- 管理员 ",{"text":"[管理地图管理员]","color":"gold","click_event":{"action":"run_command","command":"/function admin/admin/manager"}}]
tellraw @s ["§e- 仅管理员可以开启游戏 ",{"text":"[启用]","color":"green","click_event":{"action":"run_command","command":"/function admin/play/on"}},{"text":"[禁用]","color":"aqua","click_event":{"action":"run_command","command":"/function admin/play/off"}}]
tellraw @s ["§e- 管理员不在时是否可开始游戏 ",{"text":"[启用]","color":"green","click_event":{"action":"run_command","command":"/function admin/opoffline/on"}},{"text":"[禁用]","color":"aqua","click_event":{"action":"run_command","command":"/function admin/opoffline/off"}}]
tellraw @s ["§e- 仅管理员可以设置游戏 ",{"text":"[启用]","color":"green","click_event":{"action":"run_command","command":"/function admin/setting/on"}},{"text":"[禁用]","color":"aqua","click_event":{"action":"run_command","command":"/function admin/setting/off"}}]
tellraw @s ["§e- 职业PVP入口 ",{"text":"[启用]","color":"green","click_event":{"action":"run_command","command":"/function admin/pvp/on"}},{"text":"[禁用]","color":"aqua","click_event":{"action":"run_command","command":"/function admin/pvp/off"}}]
tellraw @s ["§e- TAB栏血量 ",{"text":"[启用(默认)]","color":"green","click_event":{"action":"run_command","command":"/scoreboard objectives setdisplay list health"}},{"text":"[禁用]","color":"red","click_event":{"action":"run_command","command":"/scoreboard objectives setdisplay list"}}]
tellraw @s [""]
