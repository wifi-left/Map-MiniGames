##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## WARNING: Macros may be not fully supported yet.
$scoreboard players set tmp.target board $(id)
## WARNING: Macros may be not fully supported yet.
$scoreboard players set tmp.menu board $(menu)
tag @a remove map.control.target
execute as @a if score @s park.uuid = tmp.target board run tag @s add map.control.target
execute unless entity @a[tag=map.control.target] run tellraw @s ["§c操作失败：未找到操作目标。"]
## WARNING: Macros may be not fully supported yet.
$execute if entity @a[tag=map.control.target,tag=!map.op] run tellraw @s ["§b操作成功：已§a添加§b对应地图管理员。",{"selector":"@a[tag=map.control.target]"}," ",{"text":"[删除]","color":"red","click_event":{"action":"run_command","command":"/function admin/admin/list/remove {id:$(id),menu:0}"}}]
execute if entity @a[tag=map.control.target,tag=map.op] run tellraw @s ["§c操作失败：对应玩家已经是地图管理员。"]
tag @a[tag=map.control.target,tag=!map.op] add map.op

playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

execute if score tmp.menu board matches 1 run function minecraft:admin/admin/listnew
tag @a remove map.control.target

