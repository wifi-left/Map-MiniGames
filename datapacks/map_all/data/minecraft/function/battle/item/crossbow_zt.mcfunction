##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s bow
give @s crossbow[can_break=[{blocks:["white_wool","blue_wool","red_wool"]}],tooltip_display={hidden_components:[can_break,unbreakable,enchantments]},unbreakable={},enchantments={"minecraft:quick_charge":1}]
# scoreboard players remove battle.item.3 board 1


