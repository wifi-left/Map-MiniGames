##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s *[custom_data~{vampire:true}]
# 2状态：行动（夜晚）
execute if score endwolf.state state matches 2 run item replace entity @s hotbar.0 with diamond_sword[custom_data={vampire:true},item_name={"text":"VAMPIRE'S SWORD","color":"dark_red"},enchantments={sharpness:1,fire_aspect:1},attribute_modifiers=[{type:"attack_damage",id:at,amount:10,operation:"add_value",slot:"mainhand"}]]

item replace entity @s hotbar.7 with end_rod[custom_name="\u00a7c吸血鬼象征 (可穿戴在头上)",lore=["\u00a77白天可以减轻烧伤成都。方便吸血鬼们互相识别","还能减少重力加速度，让你飞起来（不是）"],custom_data={vampire:true},equippable={slot:"head",swappable:true},attribute_modifiers=[{id:gravity,amount:-0.05,operation:"add_value",type:gravity,slot:head},{id:jump,amount:0.1,operation:"add_value",type:jump_strength,slot:head},{id:air,amount:10,operation:"add_value",type:safe_fall_distance,slot:head},{id:movement_speed,amount:0.1,operation:"add_value",type:movement_speed,slot:head},{id:air,amount:10,operation:"add_value",type:safe_fall_distance,slot:head}]]
