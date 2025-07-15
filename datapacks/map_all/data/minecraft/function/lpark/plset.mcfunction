##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute store result score @s park.x run data get entity @s Pos[0]
execute store result score @s park.y run data get entity @s Pos[1]
execute store result score @s park.z run data get entity @s Pos[2]

# playsound block.stone_button.click_on player @s ~ ~ ~ 1 1 1
tellraw @s ["§a[Checkpoint] 记录点已设置！\n",{"text":"§d[Back]","click_event":{"action":"run_command","command":"/trigger parkour set 1"},"hover_event":{"action":"show_text","value":"§b[信息] 你将会返回记录点"}}," ",{"text":"§e[Delete]","click_event":{"action":"run_command","command":"/trigger parkour set 3"},"hover_event":{"action":"show_text","value":"§e[警告] 你的所有的记录点都将消失！"}}," ",{"text":"§c[Reset]","click_event":{"action":"run_command","command":"/trigger parkour set 2"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！"}}," ",{"text":"§6[Cancel]","click_event":{"action":"run_command","command":"/trigger parkour set 4"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！跑酷也将取消。"}}]

function npark/calctime
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches ..9 run tellraw @s ["§b到达此记录点用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:0",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.0",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches 10.. run tellraw @s ["§b到达此记录点用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:0",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches 10.. run tellraw @s ["§b到达此记录点用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches ..9 run tellraw @s ["§b到达此记录点用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.0",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]

# playsound entity.experience_orb.pickup player @s ~ ~ ~ 01 1 1
execute at @s run playsound minecraft:ui.button.click block @s ~ ~ ~ 10 1 1
# say hi