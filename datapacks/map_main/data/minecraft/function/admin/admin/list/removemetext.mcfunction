##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## WARNING: Macros may be not fully supported yet.
$tellraw @a[tag=map.admin.target] [" §e- ",{"selector":"@s","color":"aqua"}," ",{"text":"[删除]","color":"red","click_event":{"action":"run_command","command":"/function admin/admin/list/remove {id:$(controlid),menu:1}"}}]

