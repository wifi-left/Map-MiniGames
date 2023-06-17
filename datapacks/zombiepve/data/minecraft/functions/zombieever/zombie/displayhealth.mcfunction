execute store result score vi.tm.health board run data get entity @s Health 1
execute as @s[tag=!pve.coin] run data modify block 348 23 -157 front_text.messages[0] set value '["\\u00a72\\u00a7lZombies \\u00a77| ",{"score":{"objective":"board","name":"vi.tm.health"},"color":"red"},"\\u00a7c♥"]'
execute as @s[tag=pve.coin] run data modify block 348 23 -157 front_text.messages[0] set value '["\\u00a7e\\u00a7l刷金币 \\u00a77| ",{"score":{"objective":"board","name":"vi.tm.health"},"color":"red"},"\\u00a7c♥"]'
# ["\\u00a7a剩余血量： ",{"score":{"objective":"board","name":"vi.tm.health"},"color":"red"},"\\u00a7c♥"]
data modify entity @s CustomName set from block 348 23 -157 front_text.messages[0]
execute as @s[tag=pve.coin] run data merge entity @s {CustomNameVisible:1b}