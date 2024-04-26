execute if score @s zombie.coin matches 14000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 14000
execute as @s[tag=buy.pass] run give @s minecraft:carrot_on_a_stick{hp:30,gun:"pao",damage:300,bullet:380,cdtime:10,distance:80,display:{Name:'"\\u00a7b李他娘的意大利魔法棒"',Lore:['"\\u00a7b可使用次数：\\u00a7e380"','"\\u00a7bCD: \\u00a7e80tick"','"\\u00a7b伤害：\\u00a7e30.0 HP"','"\\u00a7b距离：\\u00a7e80 \\u00a7bblocks"','"\\u00a7b消耗能量：\\u00a7e30"']},CustomModelData:9,speed:4}
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass