##
## 使用类任务发的物品（id 60..67 全给，用对才算完成、用错算失败）
##
give @s egg 3
give @s snowball 3
give @s bow 1
give @s arrow 8
give @s fishing_rod 1
# 面包必须带 can_always_eat，否则玩家不饿就吃不下（吃不下就没法完成"吃掉一个面包"）
give @s bread[food={nutrition:5,saturation:6,can_always_eat:true}] 3
give @s potion 1
give @s white_wool 3
