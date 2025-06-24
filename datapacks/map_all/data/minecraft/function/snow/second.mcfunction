##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score snow.state state matches 1.. run function minecraft:snow/testfor
effect give @a[team=wait.snow] resistance 2 25 true
effect give @a[team=play.snow] resistance 2 25 true

execute if score snow.state state matches 2.. if score snow.tntrun.start tick matches ..0 run function minecraft:snow/tntrun/startfall
execute if score snow.state state matches 2.. run scoreboard players remove snow.tntrun.start tick 1
execute if score snow.state state matches 2.. run title @a[team=play.snow] actionbar ["\u00a7b方块即将在 ",{"score":{"objective": "tick","name":"snow.tntrun.start"},"color":"green"},"\u00a7a seconds 后开始掉落 \u00a7b !"]


execute if score snow.state state matches 1.. run function minecraft:snow/second_xd