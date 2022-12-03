execute if score @s zombie.coin matches 14000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 14000
execute as @s[tag=buy.pass] run give @s minecraft:carrot_on_a_stick{gun:"custom",damage:100,bullet:140,cdtime:30,distance:30,display:{Name:'"\\u00a7b李他娘的意大利炮"',Lore:['"\\u00a7b子弹数量：\\u00a7e140"','"\\u00a7bCD: \\u00a7e30tick"','"\\u00a7b伤害：\\u00a7e10.0 HP"']},CustomModelData:9}
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass