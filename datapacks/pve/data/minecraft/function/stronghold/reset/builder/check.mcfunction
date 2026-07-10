scoreboard players set pve.checkok board 0
execute if score pve.check board matches 1 run scoreboard players add pve.random.sum board 1

scoreboard players set pve.checkok board 0
execute if score pve.check board matches 1 if score pve.random.1 board matches 0 run scoreboard players set pve.checkok board 1
execute if score pve.checkok board matches 1 run scoreboard players operation pve.random.1 board = pve.checknowid board
execute if score pve.checkok board matches 1 run return 0

scoreboard players set pve.checkok board 0
execute if score pve.check board matches 1 unless score pve.random.1 board matches 0 if score pve.random.2 board matches 0 run scoreboard players set pve.checkok board 1
execute if score pve.checkok board matches 1 run scoreboard players operation pve.random.2 board = pve.checknowid board
execute if score pve.checkok board matches 1 run return 0

execute if score pve.check board matches 1 unless score pve.random.1 board matches 0 unless score pve.random.2 board matches 0 if score pve.random.3 board matches 0 run scoreboard players set pve.checkok board 1
execute if score pve.checkok board matches 1 run scoreboard players operation pve.random.3 board = pve.checknowid board
execute if score pve.checkok board matches 1 run return 0

execute if score pve.check board matches 1 unless score pve.random.1 board matches 0 unless score pve.random.2 board matches 0 unless score pve.random.3 board matches 0 if score pve.random.4 board matches 0 run scoreboard players set pve.checkok board 1
execute if score pve.checkok board matches 1 run scoreboard players operation pve.random.4 board = pve.checknowid board
