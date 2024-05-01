##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add wolf.sell
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell
tp @s @e[tag=wolf.tp.sell,limit=1]
# execute at @s run tp @s ~ -20 ~
tag @e[tag=wolf.tp.sell] remove wolf.tp.sell
tag @s remove wolf.sell
effect clear @s darkness
effect clear @s blindness
