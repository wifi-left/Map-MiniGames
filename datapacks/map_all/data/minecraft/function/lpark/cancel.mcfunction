##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add park.sel
execute as @e[type=marker,tag=lpark] if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid run kill @s
tellraw @s ["§e你的跑酷已经取消！"]
tag @a[tag=park.sel] remove park.sel
playsound ui.button.click player @s
tag @s remove parkouring
clear @s carrot_on_a_stick

scoreboard players set @s hub 1

