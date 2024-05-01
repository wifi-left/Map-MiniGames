##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:bedwars/totalpeople
execute unless score bw.green state matches 1 run return 0
execute if score bd.green state matches 1 run return 0
# scoreboard players

execute store result storage minecraft:temp info_count int 1 run scoreboard players get bw.green tick

data merge storage minecraft:temp {info_message:"§a绿§8 §r绿队: §a",info_from:green}
function minecraft:bedwars/during/updateinfo/connect_info with storage minecraft:temp
# scoreboard players display name green bw.info "§9蓝§8 §r蓝队:§a§l✓"

