##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add merchant.point board 1
fill ~-1 ~ ~-1 ~1 ~ ~1 stone_bricks replace air strict
setblock ~ ~1 ~ oak_sign{front_text:{messages:["",{text:"[商贾传奇]",color:aqua,bold:true},[{text:"点位 #",color:gold},{"score":{objective:"board",name:"merchant.point"}}],""]}} keep
summon marker ~ ~ ~ {Tags:["merchant.point","neww"]}
scoreboard players operation @e[tag=neww,limit=1] board = merchant.point board
execute as @e[tag=neww,limit=1] at @s run title @a[gamemode=creative,distance=..5] actionbar ["\u00a7a新增点位ID ",{"score":{"name": "@s","objective": "board"},"color":"gold"}]
tag @e[tag=neww] remove neww
kill @s
