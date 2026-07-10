##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score @s park.x run data get entity @s Pos[0]
execute store result score @s park.y run data get entity @s Pos[1]
execute store result score @s park.z run data get entity @s Pos[2]

# playsound block.stone_button.click_on player @s ~ ~ ~ 1 1 1
tellraw @s ["§a[Checkpoint] 记录点已设置！"]

playsound minecraft:ui.button.click block @s ~ ~ ~ 10 1 1
