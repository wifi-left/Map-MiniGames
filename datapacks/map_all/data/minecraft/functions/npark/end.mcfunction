tag @s remove parkouring
tellraw @s ["\u00a7a\u00a7l\n你完成了这个跑酷！"]
playsound entity.player.levelup player @s
clear @s carrot_on_a_stick
function npark/calctime
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches 0..9 run tellraw @a [{"selector":"@s"},"\u00a7b\u00a7l 的跑酷用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:0",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.0",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches 10.. run tellraw @a [{"selector":"@s"},"\u00a7b\u00a7l 的跑酷用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:0",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches 10.. run tellraw @a [{"selector":"@s"},"\u00a7b\u00a7l 的跑酷用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches ..9 run tellraw @s [{"selector":"@s"},"\u00a7b\u00a7l 的跑酷用时：\u00a7e[",{"score":{"name": "@s","objective": "parkour.minute"},"color": "yellow"},"\u00a7e:",{"score":{"name": "@s","objective": "parkour.second"},"color": "yellow"},"\u00a7e.0",{"score":{"name": "@s","objective": "parkour.stick"},"color": "yellow"},"\u00a7e]"]
tellraw @s [""]