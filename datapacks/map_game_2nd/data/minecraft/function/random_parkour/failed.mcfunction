tellraw @s ["\u00a7c你掉下去了。"]
# 复用大厅跑酷的记录点：有记录点就回记录点，没有则回起点（utils:tp 是宏，必须 with storage）
execute store result storage minecraft:temp tp_pos.x int 1 run scoreboard players get @s park.x
execute store result storage minecraft:temp tp_pos.y int 1 run scoreboard players get @s park.y
execute store result storage minecraft:temp tp_pos.z int 1 run scoreboard players get @s park.z
scoreboard players set random_parkour.cp.tmp board 0
execute unless score @s park.x matches -10000000.. run scoreboard players set random_parkour.cp.tmp board 1
execute if score random_parkour.cp.tmp board matches 1 in parkourworld run tp @s 11 -61 229 -90 0
execute if score random_parkour.cp.tmp board matches 0 in parkourworld run function utils:tp with storage minecraft:temp tp_pos
execute if score random_parkour.cp.tmp board matches 0 run tellraw @s ["§a[记录点] §b你已返回记录点！"]
execute at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
clear @s
item replace entity @s armor.feet with leather_boots[unbreakable={},tooltip_display={hide_tooltip:true},enchantments={binding_curse:1},attribute_modifiers=[{id:a,amount:100,type:"safe_fall_distance",operation:"add_value"}]]
