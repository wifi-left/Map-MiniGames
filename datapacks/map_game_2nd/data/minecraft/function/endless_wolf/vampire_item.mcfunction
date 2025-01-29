clear @s *[custom_data~{vampire:true}]
# 2状态：行动（夜晚）
execute if score endwolf.state state matches 2 run item replace entity @s hotbar.0 with iron_sword[custom_data={vampire:true},item_name='{"text":"VAMPIRE\'S SWORD","color":"dark_red"}']
item replace entity @s hotbar.7 with end_rod[custom_name='"\\u00a7c吸血鬼象征 (可穿戴在头上)"',lore=['"\\u00a77白天可以减轻烧伤成都。方便吸血鬼们互相识别"'],custom_data={vampire:true},enchantments={protection:1},equippable={slot:"head",swappable:true}]