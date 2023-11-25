scoreboard players reset @s use.skill.2
# 跳过
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:0}}}] run function twolf/control/skip

# 选择
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:1}}}] run function twolf/control/select
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:2}}}] run function twolf/control/confirm
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:3}}}] run function twolf/control/cancel

# 女巫
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:4}}}] run function twolf/control/witch/rescue
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:5}}}] run function twolf/control/witch/kill
