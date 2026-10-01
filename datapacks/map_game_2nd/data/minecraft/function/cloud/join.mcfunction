##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute store result score tmp.team.canjoin board run function minecraft:team/api/can_join {game:"cloud",join:"function cloud/join",pull:1b}
execute if score tmp.team.canjoin board matches 0 run return 0
team join wait.sw @s
gamemode adventure @s
title @s title ["\u00a7f\u00a7l云端争霸"]
title @s subtitle ["\u00a7aCloudwars"]
execute in airworld run tp @s 688 44 353 0 0
clear @s
effect clear @s
effect give @s instant_health 1 25 true
execute if score sw.state state matches 1.. run function minecraft:cloud/spec

xp set @s 0 levels
xp set @s 0 points
execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

