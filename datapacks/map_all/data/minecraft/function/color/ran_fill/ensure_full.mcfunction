##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 用 $(c1) 把 36x36 内所有 air 补上（判定前整平面保证的兜底）| ../tools/color_floor_gen.py 生成
# 第一次调用发生在清空之后，所以它同时也是「底色铺满」那一步
$fill -5 17 77 30 17 112 $(c1) replace air
