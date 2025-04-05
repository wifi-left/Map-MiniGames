tag @s add park.sel
execute as @e[type=marker,tag=park] if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid run kill @s
tellraw @s ["\u00a7e你的跑酷已经取消！"]
tag @a[tag=park.sel] remove park.sel
playsound ui.button.click player @s
tag @s remove parkouring
clear @s carrot_on_a_stick

