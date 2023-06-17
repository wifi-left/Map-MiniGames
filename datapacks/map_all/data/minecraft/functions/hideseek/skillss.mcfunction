title @s actionbar ["\u00a7b\u00a7lSkills Actived"]
playsound ui.button.click player @s ~ ~ ~ 1 2 1

execute if entity @s[nbt={SelectedItem:{tag:{hun:1}}}] run tag @s add skill.boom
execute if entity @s[nbt={SelectedItem:{tag:{ani:1}}}] run tag @s add skill.change
# execute if entity @s[nbt={SelectedItem:{tag:{gun:1}}}] run tag @s add gun.1
execute as @s[tag=skill.change] at @s run scoreboard players add @s LRS_START_DJS 1
execute as @s[tag=skill.change] at @s run function hideseek/changeanimal
execute as @s[tag=skill.boom] run kill @e[distance=0..5,tag=hide.animals,tag=!hianimal]
execute as @s[tag=skill.boom] run particle explosion ~ ~1 ~ 1 1 1 1 10
execute as @s[tag=skill.boom] run playsound entity.generic.explode player @a[team=hide.play.hun] ~ ~ ~ 1 1 0
execute as @s[tag=skill.boom] run playsound entity.generic.explode player @a[team=hide.play.ani] ~ ~ ~ 1 1 0
xp add @s[tag=skill.boom] 6 levels
xp add @s[tag=skill.change] 5 levels
# execute as @s[tag=gun.1] run function gun/1/shoot
tag @s remove skill.boom
tag @s remove skill.change
