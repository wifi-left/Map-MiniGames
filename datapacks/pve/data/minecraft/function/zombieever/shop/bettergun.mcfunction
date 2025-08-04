##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score @s zombie.coin matches 14000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 14000
execute as @s[tag=buy.pass] run give @s minecraft:carrot_on_a_stick[custom_data={hp:30,gun:"pao",damage:300,bullet:380,cdtime:10,distance:80,speed:4},custom_name="\u00a7b李他娘的意大利魔法棒",lore=["\u00a7b可使用次数：\u00a7e380","\u00a7bCD: \u00a7e80tick","\u00a7b伤害：\u00a7e30.0 HP","\u00a7b距离：\u00a7e80 \u00a7bblocks","\u00a7b消耗能量：\u00a7e30"],custom_model_data={floats:[9f]}]
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["§c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["§a购买成功！"]
tag @s remove buy.pass

