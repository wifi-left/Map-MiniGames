##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clone 38 37 -92 42 40 -88 ~-2 ~ ~-2 strict
summon marker ~ ~ ~ {Tags:["merchant.point","neww"]}
scoreboard players add merchant.point board 1
scoreboard players operation @e[tag=neww,limit=1] board = merchant.point board
execute as @e[tag=neww,limit=1] at @s run title @a[gamemode=creative,distance=..5] actionbar ["\u00a7a新增点位ID ",{"score":{"name": "@s","objective": "board"},"color":"gold"}]
tag @e[tag=neww] remove neww
kill @s
