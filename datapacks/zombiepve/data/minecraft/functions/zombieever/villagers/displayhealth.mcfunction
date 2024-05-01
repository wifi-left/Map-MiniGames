##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score vi.tm.health board run data get entity @s Health
data modify block 348 23 -157 front_text.messages[0] set value '["\\u00a7a剩余血量： ",{"score":{"objective":"board","name":"vi.tm.health"},"color":"red"},"\\u00a7c♥"]'
# ["\\u00a7a剩余血量： ",{"score":{"objective":"board","name":"vi.tm.health"},"color":"red"},"\\u00a7c♥"]

data modify entity @s CustomName set from block 348 23 -157 front_text.messages[0]
