##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
# 商店② 火焰弹 -44（经验模式）：40 经验
# 底物用烈焰粉 + item_model 伪装成火焰弹：原版火焰弹物品自带"右键方块放火"，会抢在 consumable 之前触发
execute if score @s xp matches 40.. run xp add @s -40 levels
execute unless score @s xp matches 40.. run tellraw @s ["§c你的资源不够买这个东西！"]
execute unless score @s xp matches 40.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s xp matches 40.. run tellraw @s ["§a你购买了 §f火焰弹 §7× 1"]
execute if score @s xp matches 40.. run give @s blaze_powder[item_model="fire_charge",item_name="火焰弹",consumable={consume_seconds:0,animation:"none",has_consume_particles:false,on_consume_effects:[],sound:"item.firecharge.use"},use_cooldown={seconds:1,cooldown_group:"bw:fire_charge"},custom_data={bw_fire_charge:true}] 1
