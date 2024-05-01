##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s wooden_sword
give @s stone_sword[can_break={predicates:[{blocks:["white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false},lore=['""','"\\u00a77在主手时："','"\\u00a72 5 攻击伤害"','"\\u00a72 1.6 攻击速度"']]
# scoreboard players remove battle.item.4 board 1
