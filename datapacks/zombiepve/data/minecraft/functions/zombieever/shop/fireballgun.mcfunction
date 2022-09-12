execute if score @s zombie.coin matches 5000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 5000
execute as @s[tag=buy.pass] run give @s minecraft:carrot_on_a_stick{gun:4,bullet:140,cdtime:30,display:{Name:'"\\u00a7c火炮"',Lore:['"\\u00a7b子弹数量：\\u00a7e140"','"\\u00a7bCD: \\u00a7e30tick"','"\\u00a7b伤害：\\u00a77未知"','"\\u00a7b技能: \\u00a7a召唤火球"','"\\u00a7c注意：此枪可能会伤害玩家"']}}
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass