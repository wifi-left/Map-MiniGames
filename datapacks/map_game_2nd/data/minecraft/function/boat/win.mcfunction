##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
scoreboard players add number boat.rounds 1
scoreboard players operation @s boat.rounds = number boat.rounds
tellraw @s ["\n§a§l   您到达了终点。\n§b§l   您是§6§l 第",{"score":{"name":"@s","objective":"boat.rounds"},"color":"gold","bold":true},"§6§l名\n"]
tellraw @a[team=boat,distance=1..] [{"selector":"@s"},"\n§a§l到达了终点。"]

tag @s add boat.sel
execute as @e[tag=boat] if score @s park.uuid = @a[tag=boat.sel,limit=1] park.uuid run tag @s add boat.tmp
scoreboard players reset @e[tag=boat.tmp]
kill @e[tag=boat.tmp]
# tag @e[tag=boat,limit=1,sort=nearest] add boat.tmp
# execute if score @s park.uuid = @e[tag=boat.tmp,limit=1] park.uuid run tag @s add boat.ok
# execute as @s[tag=!boat.ok] run tp @s ~ ~0.5 ~
# execute as @s[tag=!boat.ok] run tellraw @s ["\u00a7c这不是你的载具！这是",{"selector":"@e[tag=boat.tmp,limit=1]"},"\u00a7c，请乘坐你自己的载具。"]
tag @s remove boat.sel
tag @e remove boat.tmp
tag @s remove boat.ok

