##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add boat.sel
execute as @e[tag=boat] if score @s park.uuid = @a[tag=boat.sel,limit=1] park.uuid run tag @s add boat.tmp1
# execute as @e[tag=boat.speedmarkerroot] if score @s park.uuid = @a[tag=boat.sel,limit=1] park.uuid run tag @s add boat.tmp1
# tag @e[tag=boat,limit=1,sort=nearest] add boat.tmp
# execute if score @s park.uuid = @e[tag=boat.tmp,limit=1] park.uuid run tag @s add boat.ok
# execute as @e[tag=boat.tmp1,limit=1] at @s run tag @a[tag=boat.sel] add boat.ok
execute if data entity @s {RootVehicle:{Entity:{Tags:["boat.tmp1"]}}} run tag @s add boat.ok
execute as @s[tag=!boat.ok] run tp @s ~ ~ ~
execute as @s[tag=!boat.ok] run tellraw @s ["§c这不是你的载具！§c请乘坐你自己的载具。"]
# {RootVehicle:{Entity:{id:"minecraft:minecart"}}}
tag @s remove boat.sel
# tag @e remove boat.tmp
tag @e remove boat.tmp1
tag @s remove boat.ok

