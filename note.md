# 无递归raycast
> By 伊桑桑桑桑桑

raycast:
```mcfunction
# uuid("62b8618f-a8d1-4d04-ab9b-1aa77123c442")
execute unless loaded ~ ~ ~ run return 0
summon marker ~ ~ ~ {UUID:[I;1656250767,-1462678268,-1415898457,1898169410]}
execute as 62b8618f-a8d1-4d04-ab9b-1aa77123c442 run function raycast/1
```

raycast/1:
```mcfunction
rotate @s ~ ~
function raycast/2
kill @s
```

raycast/2:
```mcfunction
execute \
    as @e[tag=!raycast.ignore,type=!#你要忽略的实体,distance=..最远距离,sort=nearest] positioned ^ ^ ^最远距离 positioned as @s[distance=..最远距离+0.3] \
    positioned ~ ~ ~2048 facing entity @s eyes positioned ^ ^ ^1024 positioned ~ ~ ~-1024 \
    rotated as 62b8618f-a8d1-4d04-ab9b-1aa77123c442 positioned ^ ^ ^1024 facing entity 62b8618f-a8d1-4d04-ab9b-1aa77123c442 feet positioned ^ ^ ^1024 \
    facing entity @s feet rotated ~ 0 positioned ^ ^ ^0.26 \
    positioned ~-0.01 ~-0.01 ~-0.01 as @s[dx=0,dy=0,dz=0] positioned ~-0.98 ~-0.98 ~-0.98 at @s[dx=0,dy=0,dz=0] \
    run return run say 被你发现了
```

使用方法：
```mcfunction
# 执行者为玩家
tag @s add raycast.ignore
execute anchored eyes positioned ^ ^ ^ run function raycast
tag @s remove raycast.ignore
```


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

# 道具竞速
IDEA BY 物骨

# 棋类游戏

**制作优先级：Low**

# Food Party

**制作优先级：Low**

制作东西、烹饪