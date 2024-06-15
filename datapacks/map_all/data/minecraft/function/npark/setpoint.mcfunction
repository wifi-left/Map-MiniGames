##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add park.sel
execute at @s as @e[type=marker,tag=park] if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid run tag @s add flaged1
tag @a[tag=park.sel] remove park.sel
scoreboard players set park.tmp park.uuid 0
execute if entity @e[tag=flaged1,distance=0..1.5] run title @s actionbar ["\u00a7c[你的记录点已经设置过了]"]
execute unless entity @e[tag=flaged1,distance=0..1.5] align xyz positioned ~0.5 ~0 ~0.5 rotated ~ 0 run function minecraft:npark/plset
tag @e[tag=flaged1] remove flaged1

