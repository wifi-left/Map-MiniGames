##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

tag @s add map.admin.target
tellraw @s [{"text":"[＜ 返回上级]","color":"light_purple","click_event":{"action":"run_command","command":"/function minecraft:admin/admin/manager"}},"§b§l 玩家（非管理员）\n§b---------------------------"]
execute as @a[tag=!map.op] run function minecraft:admin/admin/list/addmelist
tellraw @s ["§b---------------------------"]
tag @s remove map.admin.target
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

