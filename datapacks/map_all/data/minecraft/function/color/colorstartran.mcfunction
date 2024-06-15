##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tag @e[tag=color.test] add color.Nadd
function minecraft:color/setcolor

execute if score color.rantype board matches 1 run function minecraft:color/ran_fill/1_init
execute if score color.rantype board matches 2 run function minecraft:color/ran_fill/1_init
execute if score color.rantype board matches 3 run function minecraft:color/ran_fill/3_init
execute if score color.rantype board matches 4 run function minecraft:color/ran_fill/4_init
execute if score color.rantype board matches 5 run function minecraft:color/ran_fill/5_init
# 1: Block - color.ran.blockwidth (Block Width)
# 2: All random
# 3: Line 星射线
# 4: Fixed
# -5 17 77 30 17 112

# 色卡 -52 35 61
execute as @a[team=play.color] at @s run playsound minecraft:ui.button.click player @s
