##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score vi.tm.health board run data get entity @s Health
execute as @s[tag=!pve.coin] run data modify block 612 10 -89 front_text.messages[0] set value ["\u00a72\u00a7lZombies \u00a77| ",{"score":{"objective":"board","name":"vi.tm.health"},"color":"red"},"\u00a7c♥"]
execute as @s[tag=pve.coin] run data modify block 612 10 -89 front_text.messages[0] set value ["\u00a7e\u00a7l刷金币 \u00a77| ",{"score":{"objective":"board","name":"vi.tm.health"},"color":"red"},"\u00a7c♥"]


## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data modify entity @s CustomName set from block 612 10 -89 front_text.messages[0]

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @s[tag=pve.coin] run data merge entity @s {CustomNameVisible:1b}

