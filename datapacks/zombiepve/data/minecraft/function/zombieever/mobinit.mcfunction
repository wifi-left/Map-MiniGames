##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s[tag=!pve.hasname] run data modify block 612 10 -89 front_text.messages[0] set value ["\u00a72\u00a7lZombies \u00a7c僵尸们"]

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data modify entity @s CustomName set from block 612 10 -89 front_text.messages[0]
tag @s add pve.oldmob
