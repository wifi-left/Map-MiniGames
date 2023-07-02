# title @s actionbar ["\u00a7b\u00a7lSkills Actived"]
# playsound ui.button.click player @s ~ ~ ~ 1 2 1
# /give @s minecraft:carrot_on_a_stick{gun:1,bullet:1000,cdtime:30}
# 自定义枪械：
# /give @s minecraft:carrot_on_a_stick{gun:"custom",damage:30,bullet:1000,cdtime:30,distance:20}
execute if entity @s[nbt={SelectedItem:{tag:{gun:1}}}] run tag @s add gun.1
execute if entity @s[nbt={SelectedItem:{tag:{gun:2}}}] run tag @s add gun.2
execute if entity @s[nbt={SelectedItem:{tag:{gun:3}}}] run tag @s add gun.3
execute if entity @s[nbt={SelectedItem:{tag:{gun:4}}}] run tag @s add gun.4
execute if entity @s[nbt={SelectedItem:{tag:{gun:5}}}] run tag @s add gun.5
execute if entity @s[nbt={SelectedItem:{tag:{gun:6}}}] run tag @s add gun.6
execute if entity @s[nbt={SelectedItem:{tag:{gun:7}}}] run tag @s add gun.7
execute if entity @s[nbt={SelectedItem:{tag:{gun:8}}}] run tag @s add gun.8
execute if entity @s[nbt={SelectedItem:{tag:{gun:9}}}] run tag @s add gun.9
execute if entity @s[nbt={SelectedItem:{tag:{gun:-10}}}] run tag @s add gun.f10
execute if entity @s[nbt={SelectedItem:{tag:{gun:"custom"}}}] run tag @s add gun.10
execute if entity @s[nbt={SelectedItem:{tag:{gun:"pao"}}}] run tag @s add gun.11

execute as @s[tag=gun.f10] at @s run function zombieever/addcoin

execute store result score gun.tmp board as @s at @s run data get entity @s SelectedItem.tag.bullet
execute store result score @s cooldowntime as @s at @s run data get entity @s SelectedItem.tag.cdtime
execute if score gun.tmp board matches 1.. run tag @s add gun.canshoot
# execute unless score gun.tmp board matches 1.. run title @s actionbar ["\u00a7c☼ 弹药不足 ☼"]
execute unless score gun.tmp board matches 1.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=gun.canshoot] run scoreboard players remove gun.tmp board 1
execute as @s[tag=gun.canshoot] run execute store result storage gun:tmp count int 1 run scoreboard players get gun.tmp board
# execute as @s[tag=gun.canshoot] run xp add @s -1 levels
# execute as @s[tag=gun.canshoot] run title @s actionbar [{"score":{"name": "gun.tmp","objective": "board"},"color":"green"}," Amo\u00a7e Rest"]
execute as @s[tag=gun.1,tag=gun.canshoot] run function gun/1/shoot
execute as @s[tag=gun.10,tag=gun.canshoot] run function gun/custom/shoot
execute as @s[tag=gun.2,tag=gun.canshoot] run function gun/2/shoot
execute as @s[tag=gun.3,tag=gun.canshoot] run function gun/3/shoot
execute as @s[tag=gun.4,tag=gun.canshoot] run function gun/4/shoot
execute as @s[tag=gun.5,tag=gun.canshoot] run function gun/5/shoot
execute as @s[tag=gun.6,tag=gun.canshoot] run function gun/6/shoot
execute as @s[tag=gun.7,tag=gun.canshoot] run function gun/7/shoot
execute as @s[tag=gun.11,tag=gun.canshoot] run function gun/pao/shoot
tag @s remove gun.1
tag @s remove gun.2
tag @s remove gun.3
tag @s remove gun.4
tag @s remove gun.5
tag @s remove gun.6
tag @s remove gun.7
tag @s remove gun.10
tag @s remove gun.f10
tag @s remove gun.11
tag @s remove gun.canshoot