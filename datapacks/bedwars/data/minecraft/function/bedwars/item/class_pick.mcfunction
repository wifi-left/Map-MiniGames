# 在职业对话框里点了某个职业（执行者 = 玩家）
# 对话框按钮发的是 /trigger bw.class.pick set N：1 战士 / 2 弓箭手 / 3 建筑师 / 4 矿工
execute unless entity @s[tag=bw.player] run return 0
execute unless score @s bw.class.pick matches 1..4 run return 0

# 1..4 -> 0..3（bw.class 的内部编号）
scoreboard players operation @s bw.class = @s bw.class.pick
scoreboard players remove @s bw.class 1
scoreboard players reset @s bw.class.pick

# 这次选择用完：把选择道具收掉（手持的 + 地上的掉落物），再按新职业发套装
clear @s *[custom_data~{bw_class_pick:true}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{bw_class_pick:true}}}}]
function minecraft:bedwars/item/class_give

execute if score @s bw.class matches 0 run title @s actionbar ["§7职业已选定：§c战士"]
execute if score @s bw.class matches 1 run title @s actionbar ["§7职业已选定：§a弓箭手"]
execute if score @s bw.class matches 2 run title @s actionbar ["§7职业已选定：§e建筑师"]
execute if score @s bw.class matches 3 run title @s actionbar ["§7职业已选定：§b矿工"]
playsound ui.button.click player @s ~ ~ ~ 1 1 1
tellraw @s ["§7想换职业？§f下次重生§7时会再发一个「职业选择」道具。"]
