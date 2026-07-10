# tellraw @a[team=stronghold] ["\n    \u00a7b\u00a7l地牢探险用时：\n"]
scoreboard players set 100 board 100
scoreboard players set 60 board 60
scoreboard players operation pve.stronghold parkour.second = stronghold.time tick
scoreboard players operation pve.stronghold parkour.stick = stronghold.time tick
scoreboard players operation pve.stronghold parkour.second /= 20 board
scoreboard players operation pve.stronghold parkour.stick %= 20 board
scoreboard players operation pve.stronghold parkour.minute = pve.stronghold parkour.second
# scoreboard players operation stronghold parkour.minute = stronghold parkour.second
scoreboard players operation pve.stronghold parkour.minute /= 60 board
scoreboard players operation pve.stronghold parkour.second %= 60 board

execute if score pve.stronghold parkour.second matches ..9 if score pve.stronghold parkour.stick matches ..9 run tellraw @a[team=stronghold] ["\u00a7b\u00a7l地牢探险用时：§e[",{"score":{"name":"pve.stronghold","objective":"parkour.minute"},"color":"yellow"},"§e:0",{"score":{"name":"pve.stronghold","objective":"parkour.second"},"color":"yellow"},"§e.0",{"score":{"name":"pve.stronghold","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score pve.stronghold parkour.second matches ..9 if score pve.stronghold parkour.stick matches 10.. run tellraw @a[team=stronghold] ["\u00a7b\u00a7l地牢探险用时：§e[",{"score":{"name":"pve.stronghold","objective":"parkour.minute"},"color":"yellow"},"§e:0",{"score":{"name":"pve.stronghold","objective":"parkour.second"},"color":"yellow"},"§e.",{"score":{"name":"pve.stronghold","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score pve.stronghold parkour.second matches 10.. if score pve.stronghold parkour.stick matches 10.. run tellraw @a[team=stronghold] ["\u00a7b\u00a7l地牢探险用时：§e[",{"score":{"name":"pve.stronghold","objective":"parkour.minute"},"color":"yellow"},"§e:",{"score":{"name":"pve.stronghold","objective":"parkour.second"},"color":"yellow"},"§e.",{"score":{"name":"pve.stronghold","objective":"parkour.stick"},"color":"yellow"},"§e]"]
execute if score pve.stronghold parkour.second matches 10.. if score pve.stronghold parkour.stick matches ..9 run tellraw @a[team=stronghold] ["\u00a7b\u00a7l地牢探险用时：§e[",{"score":{"name":"pve.stronghold","objective":"parkour.minute"},"color":"yellow"},"§e:",{"score":{"name":"pve.stronghold","objective":"parkour.second"},"color":"yellow"},"§e.0",{"score":{"name":"pve.stronghold","objective":"parkour.stick"},"color":"yellow"},"§e]"]