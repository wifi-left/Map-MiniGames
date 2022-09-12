execute if score @s zombie.coin matches 4000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 4000
execute as @s[tag=buy.pass] run give @s minecraft:carrot_on_a_stick{gun:6,bullet:500,cdtime:10,display:{Name:'"\\u00a7d唾沫枪"',Lore:['"\\u00a7b子弹数量：\\u00a7e500"','"\\u00a7bCD: \\u00a7e10tick"','"\\u00a7b伤害：\\u00a77未知"','"\\u00a7b技能: \\u00a7a召唤唾沫星子"']}}
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass