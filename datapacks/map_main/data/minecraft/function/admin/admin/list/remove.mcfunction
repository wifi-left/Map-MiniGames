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
$execute if entity @a[tag=map.control.target,tag=map.op] run tellraw @s ["§b操作成功：已§c删除§b对应地图管理员：",{"selector":"@a[tag=map.control.target,tag=map.op]"}," ",{"text":"[重新添加]","color":"green","click_event":{"action":"run_command","command":"/function admin/admin/list/add {id:$(id),menu:0}"}}]
execute unless entity @a[tag=map.control.target,tag=map.op] run tellraw @s ["§c操作失败：对应玩家不是地图管理员。"]
tag @a[tag=map.control.target,tag=map.op] remove map.op
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

tag @a remove map.control.target
execute if score tmp.menu board matches 1 run function minecraft:admin/admin/listops
