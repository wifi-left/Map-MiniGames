title @s actionbar ["\u00a7b\u00a7lActived"]
playsound ui.button.click player @s ~ ~ ~ 1 2 1

execute if entity @s[nbt={SelectedItem:{tag:{hun:1}}}] run tag @s add skill.boom
execute if entity @s[nbt={SelectedItem:{tag:{ani:1}}}] run tag @s add skill.change
# execute if entity @s[nbt={SelectedItem:{tag:{gun:1}}}] run tag @s add gun.1
execute as @s[tag=skill.change,team=hide.play.ani] at @s run function hideseek/changeanimal
xp add @s[tag=skill.boom] 6 levels
xp add @s[tag=skill.change] 5 levels
# execute as @s[tag=gun.1] run function gun/1/shoot
tag @s remove skill.boom
tag @s remove skill.change
