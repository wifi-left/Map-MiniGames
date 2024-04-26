tag @s remove mazing
tellraw @s ["\u00a7a\u00a7l\n你完成了这个迷宫！"]
playsound entity.player.levelup player @s
clear @s carrot_on_a_stick
function maze/calctime
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches 0..9 run tellraw @a [{"selector":"@s"},"\u00a7b\u00a7l 的迷宫用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:0",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.0",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches 10.. run tellraw @a [{"selector":"@s"},"\u00a7b\u00a7l 的迷宫用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:0",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches 10.. run tellraw @a [{"selector":"@s"},"\u00a7b\u00a7l 的迷宫用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches ..9 run tellraw @s [{"selector":"@s"},"\u00a7b\u00a7l 的迷宫用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.0",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
tellraw @a [""]
# tp @s 235 115 66 -90 0