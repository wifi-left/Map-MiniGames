##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add park.sel
execute as @e[type=marker,tag=lpark] if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid run kill @s
tag @a[tag=park.sel] remove park.sel
tellraw @s ["§a[Checkpoint] §e你的记录点已被删除！"]
playsound ui.button.click player @s

