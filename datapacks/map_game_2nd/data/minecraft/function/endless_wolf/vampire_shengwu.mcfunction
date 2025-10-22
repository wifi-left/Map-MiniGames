##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute if items entity @s armor.head * run damage @s 0 minecraft:in_fire at ~ ~ ~
execute run damage @s 3 minecraft:wither at ~ ~ ~
title @s actionbar ["\u00a7c\u00a7l警告！你身上含有圣物，将受到伤害！请尽快丢弃！"]