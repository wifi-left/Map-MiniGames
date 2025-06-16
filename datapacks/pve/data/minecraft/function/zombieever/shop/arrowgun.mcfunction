##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score @s zombie.coin matches 6000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 6000
execute as @s[tag=buy.pass] run give @s minecraft:carrot_on_a_stick[custom_data={hp:10,gun:6,bullet:400,cdtime:10},custom_name="\u00a76潜影贝枪",lore=["\u00a7b子弹数量：\u00a7e400","\u00a7bCD: \u00a7e10tick","\u00a7b伤害：\u00a7e视情况而定"],custom_model_data={floats:[10f]}]
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["§c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["§a购买成功！"]
tag @s remove buy.pass

