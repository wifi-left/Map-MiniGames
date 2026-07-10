team join pacman.killer @s
tellraw @s ["\n\u00a7e\u00a7l你已成为吃豆人杀手。\n\u00a7a你目前的目标：抓住（攻击）其他吃豆人，阻止他们得分！\n\u00a7b温馨提示：抓捕（攻击）有效距离为1.5格\n"]
tag @s remove pacman.nokiller
tellraw @a[team=pacman] ["",{selector:"@s"},{text:" 成为了吃豆人杀手，请小心！",color:yellow},""]
tp @s -149 -59 -255 0 0
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
item replace entity @s armor.head with red_concrete[enchantments={binding_curse:1},attribute_modifiers=[{id:"a",amount:0.04,type:"movement_speed",operation:"add_value",display:{type:"override",value:"跑快一点"}},{id:"a",amount:-5,type:"jump_strength",operation:"add_value",display:{type:"override",value:"不准你跳"}},{id:"a",amount:10,type:"knockback_resistance",operation:"add_value",display:{type:"override",value:"没有击退"}},{id:"a",amount:-1.5,type:"entity_interaction_range",operation:"add_value",display:{type:"override",value:"触摸距离减小"}}],custom_data={"douzi":1}] 1
