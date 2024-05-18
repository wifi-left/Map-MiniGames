# 1.20.6 to 1.21
移除了 powerNBT标签，取而代之的是 acceleration_power标签，以用于控制弹射物的加速度和最大速度
# 通用启动游戏检测
```mcfunction
## 检测是否能启动游戏
scoreboard players set tmp.canplay board 0
execute store result score tmp.canplay board run function admin/play/canplay
execute if score tmp.canplay board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以开始。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canplay board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canplay board matches 0 run return 0
```

# 通用设置检测
```mcfunction
## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["\u00a7c游戏仅管理员可以设定游戏选项。\n\u00a77如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0
```

# To-do Lists

也许很久都完成不了哈哈

# 烫手的山芋
新地图大一点

# 无尽狼夜

1. 加载数据包后，随机选两名玩家为狼人
2. 狼人可在tab列表中看到本局的所有狼人（在tab列表名字为红色）
3. 狼人在落日后获得一把锋利10无法破坏钻石剑，剑不可放入容器或者丢弃。日出后收回铁剑
4. 所有玩家如果击杀了一名非狼人玩家，也会死亡
5. 所有玩家被实体或者玩家击杀死亡后，复活后会被切换为旁观者模式，且发言无法被看见
6. 狼人铁剑击杀人后，收回物品在bossbar上显示冷却60秒
7. 最后一名活着的/最后一名死亡的玩家胜利，以title显示

# 空战

## 战利品表
残月sama

## 建筑地图协助
Late_Tea

# 老虎机

# 棋类游戏

**制作优先级：Low**

# Golf

**制作优先级：Low**

咕咕咕~

看情况

# Food Party

**制作优先级：Low**

制作东西、烹饪