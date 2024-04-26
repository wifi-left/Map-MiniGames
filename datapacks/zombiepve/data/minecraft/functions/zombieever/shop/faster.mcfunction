execute if score @s zombie.coin matches 1000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 1000
execute as @s[tag=buy.pass] run give @s minecraft:carrot_on_a_stick{hp:1,gun:1,bullet:1000,cdtime:3,display:{Name:'"\\u00a7d莱福魔法棒"',Lore:['"\\u00a7b可使用次数：\\u00a7e1000"','"\\u00a7bCD: \\u00a7e6tick"','"\\u00a7b伤害：\\u00a7e3.0 HP"','"\\u00a7b消耗能量：\\u00a7e1"']},CustomModelData:9,speed:3}
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass