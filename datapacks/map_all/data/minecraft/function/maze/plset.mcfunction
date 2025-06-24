##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s add park.sel
execute at @s as @e[type=marker,tag=park] if score @s park.uuid = @a[tag=park.sel,limit=1] park.uuid run tag @s add flaged1
kill @e[tag=flaged1]

tag @s remove park.sel
summon marker ~ ~ ~ {Tags:["park","park.new"]}
scoreboard players operation @e[tag=park.new,limit=1] park.uuid = @s park.uuid
tp @e[tag=park.new] @s
execute align xyz positioned ~0.5 ~0 ~0.5 rotated ~ 0 run tp @e[tag=park.new] ~ ~ ~
tag @e[tag=park.new] remove park.new

playsound block.stone_button.click_on player @s ~ ~ ~ 1 1 1
tellraw @s ["§a[Checkpoint] 记录点已设置！\n",{"text":"§d[Back]","click_event":{"action":"run_command","command":"/trigger parkour set 1"},"hover_event":{"action":"show_text","value":"§b[信息] 你将会返回记录点"}}," ",{"text":"§c[Reset]","click_event":{"action":"run_command","command":"/trigger parkour set 2"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！"}}," ",{"text":"§6[Cancel]","click_event":{"action":"run_command","command":"/trigger parkour set 4"},"hover_event":{"action":"show_text","value":"§c[警告] 你的所有的进度都将消失！跑酷也将取消。"}}]

function maze/calctime
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches ..9 run tellraw @s ["§b到达此记录点用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:0",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.0",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches 10.. run tellraw @s ["§b到达此记录点用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:0",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches 10.. run tellraw @s ["§b到达此记录点用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches ..9 run tellraw @s ["§b到达此记录点用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.0",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]

