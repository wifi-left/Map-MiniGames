execute as @s[tag=!pve.hasname] run data modify block 612 10 -89 front_text.messages[0] set value '["\\u00a72\\u00a7lZombies \\u00a7c僵尸们"]'

data modify entity @s CustomName set from block 612 10 -89 front_text.messages[0]
tag @s add pve.oldmob