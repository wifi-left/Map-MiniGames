tellraw @s ["\u00a7c你掉下去了。"]
execute in parkourworld run tp @s 11 -61 229 -90 0
execute at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
clear @s
item replace entity @s armor.feet with leather_boots[unbreakable={},tooltip_display={hide_tooltip:true},enchantments={binding_curse:1},attribute_modifiers=[{id:a,amount:100,type:"safe_fall_distance",operation:"add_value"}]]
