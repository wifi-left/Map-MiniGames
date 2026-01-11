##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s remove parkouring
tellraw @s ["§a§l\n你完成了这个跑酷！"]
playsound entity.player.levelup player @s
clear @s carrot_on_a_stick
function npark/calctime
advancement grant @s only games/parkour
tellraw @a [{"selector":"@s"},{text:" 完成了[",color:aqua},{text:"大厅跑酷",color:gold},{text:"]",color:aqua}]

execute if score @s parkour.second matches ..9 if score @s parkour.stick matches 0..9 run tellraw @a [{"selector":"@s"},"§b§l 的跑酷用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:0",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.0",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score @s parkour.second matches ..9 if score @s parkour.stick matches 10.. run tellraw @a [{"selector":"@s"},"§b§l 的跑酷用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:0",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches 10.. run tellraw @a [{"selector":"@s"},"§b§l 的跑酷用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score @s parkour.second matches 10.. if score @s parkour.stick matches ..9 run tellraw @a [{"selector":"@s"},"§b§l 的跑酷用时：§e[",{"score":{"name":"@s","objective":"parkour.minute"},"color":"yellow"},"§e:",{"score":{"name":"@s","objective":"parkour.second"},"color":"yellow"},"§e.0",{"score":{"name":"@s","objective":"parkour.stick"},"color":"yellow"},"§e]"]
tellraw @s [""]

execute at @s run playsound ui.toast.challenge_complete player @s ~ ~ ~ 1 1 1
