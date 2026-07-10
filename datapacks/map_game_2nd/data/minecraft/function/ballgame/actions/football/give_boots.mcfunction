clear @s
tellraw @s ["\u00a7a请选择踢球力度。"]
title @s subtitle ["\u00a7a请选择踢球力度。"]
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
give @s leather_boots[custom_data={ball.force:1,ball_boots:true,ball:true},item_name={text:'力度: 1',color:green},enchantments={binding_curse:1},unbreakable={},dyed_color=327424]
give @s leather_boots[custom_data={ball.force:2,ball_boots:true,ball:true},item_name={text:'力度: 2',color:green},enchantments={binding_curse:1},unbreakable={},dyed_color=1885465]
give @s leather_boots[custom_data={ball.force:3,ball_boots:true,ball:true},item_name={text:'力度: 3',color:aqua},enchantments={binding_curse:1},unbreakable={},dyed_color=257791]
give @s leather_boots[custom_data={ball.force:4,ball_boots:true,ball:true},item_name={text:'力度: 4',color:aqua},enchantments={binding_curse:1},unbreakable={},dyed_color=2599089]
give @s leather_boots[custom_data={ball.force:5,ball_boots:true,ball:true},item_name={text:'力度: 5',color:yellow},enchantments={binding_curse:1},unbreakable={},dyed_color=16514819]
give @s leather_boots[custom_data={ball.force:6,ball_boots:true,ball:true},item_name={text:'力度: 6',color:yellow},enchantments={binding_curse:1},unbreakable={},dyed_color=11185442]
give @s leather_boots[custom_data={ball.force:7,ball_boots:true,ball:true},item_name={text:'力度: 7',color:gold},enchantments={binding_curse:1},unbreakable={},dyed_color=16754176]
give @s leather_boots[custom_data={ball.force:8,ball_boots:true,ball:true},item_name={text:'力度: 8',color:gold},enchantments={binding_curse:1},unbreakable={},dyed_color=12687953]