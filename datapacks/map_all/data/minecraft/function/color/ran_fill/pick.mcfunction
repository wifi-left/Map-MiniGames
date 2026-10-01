##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 取一次随机调色板颜色 -> storage minecraft:temp.block（方块名）| ../tools/color_floor_gen.py 生成
function color/rancolor
execute positioned -52 35 61 run function minecraft:color/ran_fill/3_whichblock
