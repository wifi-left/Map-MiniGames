##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§8 | §6§l女巫：§a【神】§r拥有一瓶§a解药§r和§c毒药§r。\n§8 | §f女巫只能在§b第一晚§r对自己使用解药。"]
execute unless score wolf.setting.milked state matches 1.. run tellraw @s ["§8 | §f若玩家同时被保护、狼杀、女巫救后，§c会被奶穿死亡。"]

