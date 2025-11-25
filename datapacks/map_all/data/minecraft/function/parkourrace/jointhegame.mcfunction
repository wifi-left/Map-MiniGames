##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§a[INFO] §b游戏已经开始了！ 你已加入游戏 ！"]
team join play.parkour @s
tellraw @a[team=play.parkour] ["\n",{"selector":"@s"},"§b 加入了 §aParkour Race§b.\n"]
function minecraft:parkourrace/died
item replace entity @s armor.feet with leather_boots[item_model=air,tooltip_display={hide_tooltip:true},unbreakable={},attribute_modifiers=[{id:"fall",type:"safe_fall_distance",amount:100,operation:"add_value"}],enchantments={binding_curse:1}]