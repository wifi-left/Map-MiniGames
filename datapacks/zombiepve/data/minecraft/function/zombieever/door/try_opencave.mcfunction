##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{lock:2}}}}] run tag @s add ok
execute if entity @s[tag=ok] run function zombieever/door/open_cave
execute if entity @s[tag=ok] run item replace entity @s weapon.mainhand with air
execute unless entity @s[tag=ok] if block 594 5 -60 iron_bars run title @s actionbar ["\u00a7c需要地牢钥匙"]
execute unless entity @s[tag=ok] unless block 594 5 -60 iron_bars run title @s actionbar ["\u00a7c门已经被打开"]
execute unless entity @s[tag=ok] run playsound block.chest.locked player @s ~ ~ ~ 2 1 1

tag @s remove ok
