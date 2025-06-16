##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.snow,gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:magma_block run function minecraft:snow/died
# execute if score snow.state state matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:snowball"}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{snow:1}}}}]

execute if score snow.state state matches 1.. run clear @a[team=play.snow] snowball
execute if score snow.state state matches 1.. run clear @a[team=play.snow] #minecraft:snowmineable
execute if score snow.state state matches 1.. run execute as @a[team=play.snow,gamemode=adventure] at @s run kill @e[type=item,distance=..5]
execute as @e[type=item] at @s if block ~ ~-1 ~ magma_block run kill @s
execute if score snow.state state matches 1.. if score snow.tntrun state matches 1.. run function minecraft:snow/tntrun/tick

