##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

$execute as @s[tag=touzi.team.a] at @s run function minecraft:desk/touzi/shop/buy/dmpick {place:$(place),team:a}
playsound block.note_block.pling player @s ~ ~ ~ 1 2 1

$execute as @s[tag=touzi.team.b] at @s run function minecraft:desk/touzi/shop/buy/dmpick {place:$(place),team:b}
