##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 散点印章 2x2：取一个新随机色后盖章 | ../tools/color_floor_gen.py 生成
function color/rancolor
clone -52 35 61 -52 35 61 ~ ~ ~ strict
clone -52 35 61 -52 35 61 ~ ~ ~1 strict
clone -52 35 61 -52 35 61 ~-1 ~ ~ strict
clone -52 35 61 -52 35 61 ~-1 ~ ~1 strict
