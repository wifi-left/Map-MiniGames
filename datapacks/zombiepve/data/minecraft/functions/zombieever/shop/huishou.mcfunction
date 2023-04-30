scoreboard players set tmp board 0
playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 0.5
execute store result score tmp board run clear @s bucket 1
execute if score tmp board matches 1.. run scoreboard players add @s zombie.coin 250
execute if score tmp board matches 1.. run tellraw @s ["\u00a7a回收牛奶桶 * 1\n\u00a76+250 Coins"]
execute if data entity @s SelectedItem.tag.gun run tag @s add tmp.usinggun
# xp set @s 0 points
execute as @s[tag=tmp.usinggun] run execute store result score gun.tmp board as @s at @s run data get entity @s SelectedItem.tag.bullet
execute as @s[tag=tmp.usinggun] if score gun.tmp board matches 1.. run tag @s add gun.nohuishou
execute as @s[tag=tmp.usinggun] unless score gun.tmp board matches 1.. run tag @s add gun.huishou
execute as @s[tag=gun.huishou] run item replace entity @s weapon.mainhand with air
execute as @s[tag=gun.huishou] run scoreboard players add @s zombie.coin 500
execute as @s[tag=gun.huishou] run tellraw @s ["\u00a7a回收枪械 * 1\n\u00a76+500 Coins"]
execute as @s[tag=gun.huishou] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=gun.nohuishou] run tellraw @s ["\u00a7c枪械 \u00a76[",{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},"\u00a76] \u00a7c不能被回收，因为他还有弹药。"]
execute unless score tmp board matches 1.. run tellraw @s[tag=!tmp.usinggun] ["\u00a7c它不能被回收，因为它不是枪械。"]
tag @s remove gun.nohuishou
tag @s remove gun.huishou
tag @s remove tmp.usinggun