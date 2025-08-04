##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result storage minecraft:temp tp_pos.x int 1 run scoreboard players get @s park.x
execute store result storage minecraft:temp tp_pos.y int 1 run scoreboard players get @s park.y
execute store result storage minecraft:temp tp_pos.z int 1 run scoreboard players get @s park.z

scoreboard players set park.tmp board 0
execute unless score @s park.x matches -10000000.. run scoreboard players set park.tmp board 1
execute if score park.tmp board matches 1 in parkourworld run tp @s 8 4 8 0 0
execute if score park.tmp board matches 0 in parkourworld run function utils:tp with storage minecraft:temp tp_pos
tellraw @s ["§a[记录点] §b你已返回记录点！\n",{"text":"§d[Back]","click_event":{"action":"run_command","command":"/trigger parkour set 1"},"hover_event":{"action":"show_text","value":"§b[信息] 你将会返回记录点"}}," ",{"text":"§e[Delete]","click_event":{"action":"run_command","command":"/trigger parkour set 3"},"hover_event":{"action":"show_text","value":"§e[警告] 你的所有的记录点都将消失！"}}," ",{"text":"§c[Reset]","click_event":{"action":"run_command","command":"/trigger parkour set 2"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！"}}," ",{"text":"§6[Cancel]","click_event":{"action":"run_command","command":"/trigger hub"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！跑酷也将取消。"}}]
# effect give @s slow_falling 1 255 true

# playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute at @s run playsound ui.button.click player @s ~ ~ ~ 10 1 1


