##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
clear @s bow
give @s crossbow[can_break={predicates:[{blocks:["white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:multishot":1},show_in_tooltip:false}]
# scoreboard players remove battle.item.2 board 1

