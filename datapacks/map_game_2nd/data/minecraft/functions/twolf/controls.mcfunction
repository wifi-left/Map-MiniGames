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

# 白狼
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:6}}}] run function twolf/control/whitewolf/choose
# 骑士
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:7}}}] run function twolf/control/knight/choose
# 自爆
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:10}}}] run function twolf/control/selfdied
execute if entity @s[nbt={SelectedItem:{tag:{wolfItem:12}}}] run function twolf/action/per/death/hunter/died
