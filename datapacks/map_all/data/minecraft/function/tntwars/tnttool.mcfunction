##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# title @s actionbar ["\u00a7"]
playsound entity.arrow.shoot player @s ~ ~ ~ 1 2 1

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tnt:1b}}}}] run tag @s add tnt.tool.1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tnt:2b}}}}] run tag @s add tnt.tool.2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tnt:3b}}}}] run tag @s add tnt.tool.3
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tnt:4b}}}}] run tag @s add tnt.tool.4
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tnt:5b}}}}] unless entity @e[tag=tnt.tntrain.tnt] run tag @s add tnt.tool.5
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tnt:6b}}}}] unless entity @e[tag=tnt.tntrain.creeper] run tag @s add tnt.tool.6
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tnt:7b}}}}] unless entity @e[tag=tnt.tntrain.fireball] run tag @s add tnt.tool.7
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tnt:8b}}}}] run tag @s add tnt.tool.8

execute as @s[tag=tnt.tool.1] at @s run item replace entity @s weapon.mainhand with air
execute as @s[tag=tnt.tool.2] at @s run item replace entity @s weapon.mainhand with air
execute as @s[tag=tnt.tool.3] at @s run item replace entity @s weapon.mainhand with air
execute as @s[tag=tnt.tool.4] at @s run item replace entity @s weapon.mainhand with air
execute as @s[tag=tnt.tool.5] at @s run item replace entity @s weapon.mainhand with air
execute as @s[tag=tnt.tool.6] at @s run item replace entity @s weapon.mainhand with air
execute as @s[tag=tnt.tool.7] at @s run item replace entity @s weapon.mainhand with air
execute as @s[tag=tnt.tool.8] at @s run item replace entity @s weapon.mainhand with air
execute as @s[tag=tnt.tool.1] at @s run function tntwars/shoottnt/1
execute as @s[tag=tnt.tool.2] at @s run function tntwars/shoottnt/2
execute as @s[tag=tnt.tool.3] at @s run function tntwars/shoottnt/3
execute as @s[tag=tnt.tool.4] at @s run function tntwars/shoottnt/4
execute as @s[tag=tnt.tool.5] at @s run function tntwars/shoottnt/5
execute as @s[tag=tnt.tool.6] at @s run function tntwars/shoottnt/6
execute as @s[tag=tnt.tool.7] at @s run function tntwars/shoottnt/7
execute as @s[tag=tnt.tool.8] at @s run function tntwars/shoottnt/longtnt

tag @s remove tnt.tool.1
tag @s remove tnt.tool.2
tag @s remove tnt.tool.3
tag @s remove tnt.tool.4
tag @s remove tnt.tool.5
tag @s remove tnt.tool.6
tag @s remove tnt.tool.7
tag @s remove tnt.tool.8

