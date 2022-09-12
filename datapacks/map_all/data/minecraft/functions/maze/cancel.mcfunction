tag @s add park.sel
execute as @e[type=marker,tag=park] if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid run kill @s
tellraw @s ["\u00a7e你的迷宫进度已经重置！"]
tag @a[tag=park.sel] remove park.sel
playsound ui.button.click player @s
tag @s remove mazing
clear @s carrot_on_a_stick
tp @s 235 115 66 -90 0