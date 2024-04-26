execute if score @s zombie.coin matches 1100.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 1100
execute as @s[tag=buy.pass] run give @s carrot_on_a_stick{display:{Name:'"\\u00a7e一小袋金币 \\u00a77- 右键使用"'},coin:1000,CustomModelData:21,gun:-10} 1
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass