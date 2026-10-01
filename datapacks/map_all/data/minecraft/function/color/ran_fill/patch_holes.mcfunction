##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 用当前已加载的 $(block) 把 36x36 内所有 air 补上 | ../tools/color_floor_gen.py 生成
# 供 5_init 使用（它的地板来自世界里的渐变源行，若源行有缺格会留下 air）
$fill -5 17 77 30 17 112 $(block) replace air
