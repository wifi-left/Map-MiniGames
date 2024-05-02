##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if data entity @s SelectedItem.components."minecraft:custom_data".gun run tag @s add tmp.usinggun
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{gun:-10}}}} run tag @s remove tmp.usinggun
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{gun:-10}}}} run tag @s add tmp.coindisplay
# xp set @s 0 points
execute as @s[tag=tmp.coindisplay] run execute store result score gun.tmp board as @s at @s run data get entity @s SelectedItem.components."minecraft:custom_data".coin
execute as @s[tag=tmp.coindisplay] run execute if score gun.tmp board matches 1.. run title @s actionbar [{"translate":"\u00a76☼ \u00a7e[%s\u00a7e] \u00a7e内含金钱: \u00a7a%s\u00a7b Coins \u00a76☼","with":[{"nbt":"SelectedItem.components.\"minecraft:custom_name\"","interpret":true,"entity":"@s"},{"score":{"name": "gun.tmp","objective": "board"},"color": "green"}]}]
execute as @s[tag=tmp.usinggun] run execute store result score gun.tmp board as @s at @s run data get entity @s SelectedItem.components."minecraft:custom_data".bullet
execute as @s[tag=tmp.usinggun] if score @s cooldowntime matches 1.. run execute if score gun.tmp board matches 1.. run title @s actionbar [{"translate":"\u00a76☼ \u00a7e[%s\u00a7e] \u00a7e使用次数剩余: \u00a7a%s \u00a7b冷却时间: %s\u00a7ct\u00a76 ☼","with":[{"nbt":"SelectedItem.components.\"minecraft:custom_name\"","interpret":true,"entity":"@s"},{"score":{"name": "gun.tmp","objective": "board"},"color": "green"},{"score":{"name": "@s","objective": "cooldowntime"},"color": "red"}]}]
execute as @s[tag=tmp.usinggun] unless score @s cooldowntime matches 1.. run execute if score gun.tmp board matches 1.. run title @s actionbar [{"translate":"\u00a76☼ \u00a7e[%s\u00a7e] \u00a7e使用次数剩余: \u00a7a%s\u00a7e 消耗能量值: \u00a76%s \u00a7d⚝ %s\u00a76 ☼","with":[{"nbt":"SelectedItem.components.\"minecraft:custom_name\"","interpret":true,"entity":"@s"},{"score":{"name": "gun.tmp","objective": "board"},"color": "green"},{"nbt":"SelectedItem.components.\"minecraft:custom_data\".hp","interpret":false,"entity":"@s","color":"gold"},{"nbt":"SelectedItem.components.\"minecraft:lore\"[2]","interpret":true,"entity":"@s"}]}]
execute as @s[tag=tmp.usinggun] run execute unless score gun.tmp board matches 1.. run title @s actionbar [{"translate":"\u00a7c☼ \u00a7e[%s\u00a7e] \u00a7c物品已被损坏 \u00a7c ☼","with":[{"nbt":"SelectedItem.components.\"minecraft:custom_name\"","interpret":true,"entity":"@s"}]}]

# "\u00a7c\u00a7l冷却中: ",{"score":{"objective": "cooldowntime","name": "@s"},"color":"yellow"},"\u00a7et"
# execute as @s[tag=tmp.usinggun] run scoreboard players operation @s bw.tmp.em = gun.tmp board
# scoreboard players reset @s bw.tmp.em
tag @s remove tmp.usinggun
tag @s remove tmp.coindisplay

