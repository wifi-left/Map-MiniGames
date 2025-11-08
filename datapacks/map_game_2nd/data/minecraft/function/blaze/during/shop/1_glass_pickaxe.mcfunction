execute if score blaze.mode state matches 2 at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score blaze.mode state matches 2 run tellraw @s ["\u00a7c该模式不需要玻璃镐！"]
execute if score blaze.mode state matches 2 run return 0


# 通用逻辑
scoreboard players set blaze.buy.success board 0
execute at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 2 1
# 需要的金币
scoreboard players set blaze.need board 0

execute if score @s blaze.coin >= blaze.need board run scoreboard players set blaze.buy.success board 1
execute if score blaze.buy.success board matches 1 run tellraw @s ["\u00a7a购买成功。"]
execute if score blaze.buy.success board matches 1 run scoreboard players operation @s blaze.coin -= blaze.need board
execute if score blaze.buy.success board matches 0 run tellraw @s ["\u00a7c购买失败！金币不足！"]
execute if score blaze.buy.success board matches 0 at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1

execute if score blaze.buy.success board matches 0 run return 0

# 前置条件
clear @s wooden_pickaxe[custom_data~{blaze:true}]
clear @s #stainglass[custom_data~{blaze:true}]

# 购买的物品
function minecraft:blaze/item/glass_pickaxe