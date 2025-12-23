##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute unless items entity @s hotbar.* diamond_sword run clear @s diamond_sword
execute unless items entity @s hotbar.* diamond_sword run item replace entity @s hotbar.0 with diamond_sword[attribute_modifiers=[{id:"www",amount:7,type:"attack_damage",operation:"add_value",slot:"mainhand"}],item_name='The Sword of Hunters',item_model="stone_hoe",enchantment_glint_override=true]
execute unless items entity @s hotbar.* carrot_on_a_stick[custom_data~{fly_arrow:1}] run clear @s carrot_on_a_stick[custom_data~{fly_arrow:1}]
execute unless items entity @s hotbar.* carrot_on_a_stick[custom_data~{fly_arrow:1}] run item replace entity @s hotbar.8 with carrot_on_a_stick[unbreakable={},custom_data={fly_arrow:1},custom_name="\u00a7b冲刺飞行\u00a77 - 右键点击",use_cooldown={seconds:20,cooldown_group:"hide_seek:shoot"},item_model="snowball"]

execute unless items entity @s hotbar.* carrot_on_a_stick[custom_data~{fly_bow:1}] run clear @s carrot_on_a_stick[custom_data~{fly_bow:1}]
execute unless items entity @s hotbar.* carrot_on_a_stick[custom_data~{fly_bow:1}] run item replace entity @s hotbar.1 with carrot_on_a_stick[unbreakable={},custom_data={fly_bow:1},custom_name="\u00a7b发射魔法箭\u00a77 - 右键点击",use_cooldown={seconds:20,cooldown_group:"hide_seek:shoot"},item_model="bow",custom_model_data={floats:[0.9]}]

# give @s bow{Unbreakable:1b,Enchantments:[{id:"power",lvl:1},{id:"infinity",lvl:1}]}
# item replace entity @s inventory.26 with arrow 1
# effect give @s speed infinite 0 true
execute unless items entity @s armor.head leather_helmet run item replace entity @s armor.head with leather_helmet[unbreakable={},enchantments={"minecraft:binding_curse":1},item_model="red_banner"]
execute unless items entity @s armor.chest leather_chestplate run item replace entity @s armor.chest with leather_chestplate[unbreakable={},enchantments={"minecraft:binding_curse":1}]
execute unless items entity @s armor.legs leather_leggings run item replace entity @s armor.legs with leather_leggings[unbreakable={},enchantments={"minecraft:binding_curse":1}]
execute unless items entity @s armor.feet leather_boots run item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={"minecraft:binding_curse":1},attribute_modifiers=[{type:"movement_speed",slot:"feet",id:"1",amount:0.03,operation:"add_value"},{type:"jump_strength",slot:"feet",id:"1",amount:0.4,operation:"add_value"},{type:"safe_fall_distance",slot:"feet",id:"1",amount:5,operation:"add_value"},{type:"water_movement_efficiency",slot:"feet",id:"1",amount:0.5,operation:"add_value"}]]