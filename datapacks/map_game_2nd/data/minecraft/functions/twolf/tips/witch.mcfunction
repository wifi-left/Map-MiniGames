##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\u00a78 | \u00a76\u00a7l女巫：\u00a7a【神】\u00a7r拥有一瓶\u00a7a解药\u00a7r和\u00a7c毒药\u00a7r。\n\u00a78 | \u00a7f女巫只能在\u00a7b第一晚\u00a7r对自己使用解药。"]
execute unless score wolf.setting.milked state matches 1.. run tellraw @s ["\u00a78 | \u00a7f若玩家同时被保护、狼杀、女巫救后，\u00a7c会被奶穿死亡。"]
