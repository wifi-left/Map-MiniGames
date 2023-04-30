execute if score @s zombie.coin matches 6000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 6000
execute as @s[tag=buy.pass] run give @s diamond_helmet{Unbreakable:1b} 1
execute as @s[tag=buy.pass] run give @s diamond_chestplate{Unbreakable:1b} 1
execute as @s[tag=buy.pass] run give @s diamond_leggings{Unbreakable:1b} 1
execute as @s[tag=buy.pass] run give @s diamond_boots{Unbreakable:1b} 1
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass