##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
effect give @a[team=sneak] resistance 2 25 true

execute if score sneak.state state matches 2.. if score sneak.time tick matches ..0 run function minecraft:sneak/startcolor
execute if score sneak.state state matches 2.. run scoreboard players remove sneak.time tick 1
execute if score sneak.state state matches 2.. run title @a[team=sneak] actionbar ["\u00a7b方块即将在 ",{"score":{"objective": "tick","name":"sneak.time"},"color":"green"},"\u00a7a seconds 后开始变色 \u00a7b !"]
execute as @a[team=sneak,gamemode=adventure] run function minecraft:sneak/item

