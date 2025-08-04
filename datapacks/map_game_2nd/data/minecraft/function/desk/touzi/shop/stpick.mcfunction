##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

## WARNING: Macros may be not fully supported yet.
$execute as @s[tag=touzi.team.a] at @s run function minecraft:desk/touzi/shop/buy/stpick {place:$(place),team:a}
playsound block.note_block.pling player @s ~ ~ ~ 1 2 1

## WARNING: Macros may be not fully supported yet.
$execute as @s[tag=touzi.team.b] at @s run function minecraft:desk/touzi/shop/buy/stpick {place:$(place),team:b}

