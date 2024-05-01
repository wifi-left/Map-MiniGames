##
## Datapack Upgrader v1.0.0 by wifi_left
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
tellraw @s ["\u00a7a[Checkpoint] 记录点已设置！\n",{"text":"\u00a7d[Back]","clickEvent": {"action": "run_command","value": "/trigger parkour set 1"},"hoverEvent": {"action": "show_text","value": "\u00a7b[信息] 你将会返回记录点"}}," ",{"text":"\u00a7c[Reset]","clickEvent": {"action": "run_command","value": "/trigger parkour set 2"},"hoverEvent": {"action": "show_text","value": "\u00a7c[警告] 你的所有的进度都将消失！"}}," ",{"text":"\u00a76[Cancel]","clickEvent": {"action": "run_command","value": "/trigger parkour set 4"},"hoverEvent": {"action": "show_text","value": "\u00a7c[警告] 你的所有的进度都将消失！跑酷也将取消。"}}]

function maze/calctime
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches ..9 run tellraw @s ["\u00a7b到达此记录点用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:0",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.0",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches 10.. run tellraw @s ["\u00a7b到达此记录点用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:0",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches 10.. run tellraw @s ["\u00a7b到达此记录点用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches ..9 run tellraw @s ["\u00a7b到达此记录点用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.0",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
