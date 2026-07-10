##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## WARNING: 'storage' will not be transformed because we don't know what to do with it.
execute store result storage temp controlid int 1 run scoreboard players get @s park.uuid
function minecraft:admin/admin/list/removemetext with storage minecraft:temp
