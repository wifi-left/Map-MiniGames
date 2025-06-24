##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{lock:3}}}}] run tag @s add ok
execute if block 503 -43 -117 air run tag @s remove ok
execute if entity @e[tag=pve.zombie] run tag @s remove ok
execute if entity @s[tag=ok] run function zombieever/door/open_cave_wall
execute if entity @s[tag=ok] run item replace entity @s weapon.mainhand with air
execute unless entity @s[tag=ok] unless block 503 -43 -117 air run title @s actionbar ["\u00a7c需要TNT"]
execute unless entity @s[tag=ok] if block 503 -43 -117 air run title @s actionbar ["\u00a7c已经被爆破"]
execute unless entity @s[tag=ok] run playsound block.chest.locked player @s ~ ~ ~ 2 1 1

execute if entity @e[tag=pve.zombie] run title @s actionbar ["\u00a7c僵尸没有被消灭完"]
tag @s remove ok

