clear @s
effect clear @s
item replace entity @s container.0 with minecraft:wooden_sword{Enchantments:[{id:"unbreaking",lvl:1}],display:{Name:'{"text":"桃木剑","color":"#e4a10f","italic": false}',Lore:['"\\u00a77一个很基础的木剑"']},Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:6d,Operation:0,UUID:[I;4894,7942,7863,6495],Slot:mainhand}]}
# give @s minecraft:ender_pearl{Unbreakable:1b,HideFlags:63} 32
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1b,display:{color:24768}}
item replace entity @s armor.head with minecraft:player_head{Unbreakable:1b,SkullOwner:"MHF_CoconutG"}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1b,display:{color:14983439},Enchantments:[{id:"feather_falling",lvl:5}]}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1b,display:{color:12583002}}
give @s carrot_on_a_stick{job:3,display:{Name:'"\\u00a79空间移动 \\u00a77- 右键使用"',Lore:['"\\u00a78你突然就消失了"']},CustomModelData:6}
# effect give @s jump_boost 99999 255 true
# effect give @s invisibility 99999 1