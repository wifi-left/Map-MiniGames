execute if score @s zombie.coin matches 10000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 10000
execute as @s[tag=buy.pass] run give @s minecraft:carrot_on_a_stick{hp:30,gun:"pao",damage:500,bullet:50,cdtime:20,distance:80,display:{Name:'"\\u00a7a\\u00a7l电磁炮"',Lore:['"\\u00a7b可使用次数：\\u00a7e50"','"\\u00a7bCD: \\u00a7e80tick"','"\\u00a7b伤害：\\u00a7e50.0 HP"','"\\u00a7b距离：\\u00a7e80 \\u00a7bblocks"','"\\u00a7b消耗能量：\\u00a7e30"']},CustomModelData:9,speed:6}
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass
