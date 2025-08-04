##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tmp board 0
execute store result score tmp board run clear @s bucket 1
execute if score tmp board matches 1.. run scoreboard players add @s zombie.coin 250
execute if score @s zombie.coin matches 500.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run give @s milk_bucket 1
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 500
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["§c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["§a购买成功！"]
tag @s remove buy.pass

