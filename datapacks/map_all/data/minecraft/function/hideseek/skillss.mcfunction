##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s actionbar ["\u00a7b\u00a7l触发技能"]
playsound ui.button.click player @s ~ ~ ~ 1 2 1

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{hun:1}}}}] run tag @s add skill.boom
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ani:1}}}}] run tag @s add skill.change
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ani:2}}}}] run tag @s add skill.ani.2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{fly_arrow:1}}}}] run tag @s add skill.fly
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{fly_bow:1}}}}] run tag @s add skill.flybow
# execute if entity @s[nbt={SelectedItem:{tag:{gun:1}}}] run tag @s add gun.1
execute as @s[tag=skill.change,team=hide.play.ani] at @s run function hideseek/changeanimal
execute as @s[tag=skill.ani.2,team=hide.play.ani] at @s run function hideseek/spawnfakeanimal
execute as @s[tag=skill.fly,team=hide.play.ani] at @s run function hideseek/fly_arrow
execute as @s[tag=skill.fly,team=hide.play.hun] at @s run function hideseek/fly_arrow
execute as @s[tag=skill.flybow,team=hide.play.hun] at @s run function hideseek/fly_bow
xp add @s[tag=skill.boom] 15 levels
xp add @s[tag=skill.change] 2 levels
xp add @s[tag=skill.fly,team=hide.play.hun] 10 levels
xp add @s[tag=skill.fly,team=hide.play.ani] 15 levels
xp add @s[tag=skill.flybow] 10 levels
xp add @s[tag=skill.ani.2] 10 levels
# execute as @s[tag=gun.1] run function gun/1/shoot
tag @s remove skill.boom
tag @s remove skill.change
tag @s remove skill.fly
tag @s remove skill.flybow
tag @s remove skill.ani.2


