##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 调试入口：指定地板类型，直接生成一次地板（1..17），用于逐个类型验收
# 用法：/function minecraft:color/test {type:12}
# 同一类型内部还有随机变体，多跑几次能看到不同变体
# 难度阶段调试：先 /scoreboard players set color.round tick 10（换尺寸）或 15（换形状），再调本函数
$scoreboard players set color.rantype board $(type)
function minecraft:color/ran_fill/reroll
function minecraft:color/colorstartran
