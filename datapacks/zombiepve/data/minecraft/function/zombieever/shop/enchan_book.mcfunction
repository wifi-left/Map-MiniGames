##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute if score @s zombie.coin matches 7000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 7000
execute as @s[tag=buy.pass] run give @s paper[custom_name='{"italic":false,"extra":[{"text":""},{"color":"#7CFE9D","text":"增益效果"}],"text":""}',lore=['{"italic":false,"color":"white","extra":[{"text":""},{"text":"提升玩家能量回复速度"}],"text":""}','{"italic":false,"color":"white","extra":[{"text":""},{"color":"yellow","text":"速度*2"}],"text":""}','"\\u00a7b放在背包即可生效"'],custom_data={hpdouble:true},enchantments={levels:{"minecraft:efficiency":1}}]
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass
