# execute if score t_says.scene board matches 10 run data modify storage minecraft:temp t_says.msg set value ["合成：钻石剑"]
# execute if score t_says.scene board matches 11 run data modify storage minecraft:temp t_says.msg set value ["合成：金剑"]
# execute if score t_says.scene board matches 12 run data modify storage minecraft:temp t_says.msg set value ["合成：铁剑"]
# execute if score t_says.scene board matches 13 run data modify storage minecraft:temp t_says.msg set value ["合成：木剑"]
# execute if score t_says.scene board matches 14 run data modify storage minecraft:temp t_says.msg set value ["合成：石剑"]
# execute if score t_says.scene board matches 15 run data modify storage minecraft:temp t_says.msg set value ["合成：木门"]
# execute if score t_says.scene board matches 16 run data modify storage minecraft:temp t_says.msg set value ["合成：铁门"]
# execute if score t_says.scene board matches 17 run data modify storage minecraft:temp t_says.msg set value ["合成：铁活版门"]
# execute if score t_says.scene board matches 18 run data modify storage minecraft:temp t_says.msg set value ["合成：木活版门"]
# execute if score t_says.scene board matches 19 run data modify storage minecraft:temp t_says.msg set value ["合成：箱子"]

execute if score t_says.scene board matches 10 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* diamond_sword run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 11 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* golden_sword run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 12 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* iron_sword run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 13 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* wooden_sword run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 14 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* stone_sword run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 15 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* oak_door run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 16 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* iron_door run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 17 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* iron_trapdoor run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 18 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* oak_trapdoor run function minecraft:t_says/judge/give_judge/finish
execute if score t_says.scene board matches 19 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] if items entity @s container.* chest run function minecraft:t_says/judge/give_judge/finish