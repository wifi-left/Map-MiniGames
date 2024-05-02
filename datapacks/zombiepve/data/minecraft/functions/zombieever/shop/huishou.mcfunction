##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tmp board 0
playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 0.5
execute store result score tmp board run clear @s bucket 1
execute if score tmp board matches 1.. run scoreboard players add @s zombie.coin 250
execute if score tmp board matches 1.. run tellraw @s ["\u00a7a回收牛奶桶 * 1\n\u00a76+250 Coins"]
execute if data entity @s SelectedItem.components."minecraft:custom_data".gun run tag @s add tmp.usinggun
execute if data entity @s {SelectedItem:{id:"minecraft:enchanted_book"}} run tag @s add gun.getenchanbook
# xp set @s 0 points
execute as @s[tag=tmp.usinggun] run execute store result score gun.tmp board as @s at @s run data get entity @s SelectedItem.components."minecraft:custom_data".bullet
execute as @s[tag=tmp.usinggun] if score gun.tmp board matches 1.. run tag @s add gun.nohuishou
execute as @s[tag=tmp.usinggun] unless score gun.tmp board matches 1.. run tag @s add gun.huishou
execute as @s[tag=gun.huishou] run item replace entity @s weapon.mainhand with air
execute as @s[tag=gun.huishou] run scoreboard players add @s zombie.coin 500
execute as @s[tag=gun.huishou] run tellraw @s ["\u00a7a回收魔法棒/枪械 * 1\n\u00a76+500 Coins"]
execute as @s[tag=gun.huishou] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=gun.nohuishou] run tellraw @s ["\u00a7c\u00a76[",{"nbt":"SelectedItem.components.\"minecraft:custom_name\"","interpret":true,"entity":"@s"},"\u00a76] \u00a7c不能被回收，因为他还没有被损坏。"]
execute unless score tmp board matches 1.. run tellraw @s[tag=!tmp.usinggun] ["\u00a7c它不能被回收，因为它不是枪械、魔法棒、桶或者附魔书。"]

execute as @s[tag=gun.getenchanbook] run item replace entity @s weapon.mainhand with air
execute as @s[tag=gun.getenchanbook] run scoreboard players add @s zombie.coin 100
execute as @s[tag=gun.getenchanbook] run tellraw @s ["\u00a7a回收附魔书 * 1\n\u00a76+100 Coins"]
execute as @s[tag=gun.getenchanbook] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1


tag @s remove gun.nohuishou
tag @s remove gun.huishou
tag @s remove tmp.usinggun
tag @s remove gun.getenchanbook
