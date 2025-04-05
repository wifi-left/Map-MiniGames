tag @s add park.sel
execute as @e[type=marker,tag=park] if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid run kill @s
tellraw @s ["\u00a7e你的跑酷已经重置！"]
tag @a[tag=park.sel] remove park.sel
tp @s 188 115 -26 180 0

# function minecraft:npark/join
playsound ui.button.click player @s
# function minecraft:npark/resettime

