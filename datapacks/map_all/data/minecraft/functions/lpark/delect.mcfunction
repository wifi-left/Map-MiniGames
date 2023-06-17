tag @s add park.sel
execute as @e[type=marker,tag=lpark] if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid run kill @s
tag @a[tag=park.sel] remove park.sel
tellraw @s ["\u00a7a[Checkpoint] \u00a7e你的记录点已被删除！"]
playsound ui.button.click player @s