##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:bedwars/totalpeople
execute unless score bw.red state matches 1 run return 0
execute if score bd.red state matches 1 run return 0
# scoreboard players

## WARNING: 'storage' will not be transformed because we don't know what to do with it.
execute store result storage minecraft:temp info_count int 1 run scoreboard players get bw.red tick

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
## WARNING: 'storage' will not be transformed because we don't know what to do with it.
data merge storage minecraft:temp {info_message:"§c红§8 §r红队: §a",info_from:red}
function minecraft:bedwars/during/updateinfo/connect_info with storage minecraft:temp
# scoreboard players display name red bw.info "§9蓝§8 §r蓝队:§a§l✓"


