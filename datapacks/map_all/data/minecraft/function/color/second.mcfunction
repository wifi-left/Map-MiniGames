##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set play.color.player tick 0
execute as @a[team=play.color,gamemode=adventure] run scoreboard players add play.color.player tick 1
execute if score color.state state matches 1..5 if score play.color.player tick matches ..1 run function minecraft:color/over
effect give @a[team=play.color] resistance 1 25 true
effect give @a[team=play.color] night_vision 15 25 true

execute if score color.tt tick matches ..4 run effect give @a[team=play.color] speed 2 1 true
execute if score color.tt tick matches ..2 run effect give @a[team=play.color] jump_boost 2 1 true

# actionbar 提示当前轮数；颜色变化阶段（state 2）额外标注"颜色变化中"（state 3 的倒计时由 step/two 自己带轮数）
execute if score color.state state matches 1 run title @a[team=play.color] actionbar ["\u00a7b第 ",{"score":{"objective":"tick","name":"color.round"},"color":"gold"},"\u00a7b 轮"]
execute if score color.state state matches 2 run title @a[team=play.color] actionbar ["\u00a7b第 ",{"score":{"objective":"tick","name":"color.round"},"color":"gold"},"\u00a7b 轮 \u00a78| \u00a7a颜色变化中"]

execute if score color.state state matches 2 run function minecraft:color/step/one
execute if score color.state state matches 3 run function minecraft:color/step/two
function color/gettip

