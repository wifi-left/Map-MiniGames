##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

team join wait.sw @s
gamemode adventure @s
title @s title ["\u00a7f\u00a7l云端争霸"]
title @s subtitle ["\u00a7aCloudwars"]
execute in airworld run tp @s 688 44 353 0 0
clear @s
effect clear @s
effect give @s instant_health 1 25 true
execute if score sw.state state matches 1.. run function minecraft:cloud/spec
