##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 给"这一格方块"留一个待破坏标记：同一格方块最多只有一个标记。
# 调用方已经 align xyz 把执行位置吸附到方块角，所以 dx=0,dy=0,dz=0 的选区正好是这一格；
# 标记放在方块正中心（角 + 0.5），必然落在选区内部，后来的同格采样都能看见它。
# 于是销毁阶段就是"一格方块 → 一次掉落 + 一次 setblock"，
# 与多个标记谁先谁后无关，也就不可能同一格掉两次。
execute unless entity @e[tag=cmd.tnt.boom,dx=0,dy=0,dz=0] run summon marker ~0.5 ~0.5 ~0.5 {Tags:["cmd.tnt","cmd.tnt.boom"]}
