# 游玩区域
# 110 -59 206
# 110 -59 282
# 281 -59 206
# 281 -59 282

# [x=281,dx=1] 禁止 1 0 [1]
# [x=110,dx=1] 禁止 -1 0 (2 0) [2]
# [z=282,dz=1] 禁止 0 1 [3]
# [z=206,dz=1] 禁止 0 -1 (0 2) [4]
execute if score pve.stronghold.limit board matches ..0 run function minecraft:stronghold/reset/builder/end
execute if score pve.stronghold.limit board matches ..0 run return 0
scoreboard players set pve.check board 0

scoreboard players set pve.random.sum board 0

scoreboard players set pve.random.1 board 0
scoreboard players set pve.random.2 board 0
scoreboard players set pve.random.3 board 0
scoreboard players set pve.random.4 board 0

scoreboard players set pve.move.1_0 board 1
scoreboard players set pve.move.2_0 board 1
scoreboard players set pve.move.0_1 board 1
scoreboard players set pve.move.0_2 board 1

execute store result score pve.now.x board run data get entity @s Pos[0]
execute store result score pve.now.z board run data get entity @s Pos[2]

execute if score pve.now.x board matches 240.. run scoreboard players set pve.move.1_0 board 0
execute if score pve.now.x board matches ..112 run scoreboard players set pve.move.2_0 board 0
execute if score pve.now.z board matches 281.. run scoreboard players set pve.move.0_1 board 0
execute if score pve.now.z board matches ..208 run scoreboard players set pve.move.0_2 board 0

scoreboard players set pve.check board 0
execute at @s if score pve.move.1_0 board matches 1 run function minecraft:stronghold/reset/builder/1_0
scoreboard players set pve.checknowid board 1
execute if score pve.check board matches 1 run function minecraft:stronghold/reset/builder/check

scoreboard players set pve.check board 0
execute at @s if score pve.move.2_0 board matches 1 run function minecraft:stronghold/reset/builder/2_0
scoreboard players set pve.checknowid board 2
execute if score pve.check board matches 1 run function minecraft:stronghold/reset/builder/check

scoreboard players set pve.check board 0
execute at @s if score pve.move.0_1 board matches 1 run function minecraft:stronghold/reset/builder/0_1
scoreboard players set pve.checknowid board 3
execute if score pve.check board matches 1 run function minecraft:stronghold/reset/builder/check

scoreboard players set pve.check board 0
execute at @s if score pve.move.0_2 board matches 1 run function minecraft:stronghold/reset/builder/0_2
scoreboard players set pve.checknowid board 4
execute if score pve.check board matches 1 run function minecraft:stronghold/reset/builder/check


scoreboard players set pve.random board 0

execute if score pve.random.sum board matches 0 run function minecraft:stronghold/reset/builder/end
execute if score pve.random.sum board matches 1 run scoreboard players set pve.random board 1
execute if score pve.random.sum board matches 2 store result score pve.random board run random value 1..2
execute if score pve.random.sum board matches 3 store result score pve.random board run random value 1..3
execute if score pve.random.sum board matches 4 store result score pve.random board run random value 1..4



scoreboard players set pve.finalmove board 0
execute if score pve.random board matches 1 run scoreboard players operation pve.finalmove board = pve.random.1 board
execute if score pve.random board matches 2 run scoreboard players operation pve.finalmove board = pve.random.2 board
execute if score pve.random board matches 3 run scoreboard players operation pve.finalmove board = pve.random.3 board
execute if score pve.random board matches 4 run scoreboard players operation pve.finalmove board = pve.random.4 board

# tellraw @a ["\n",{nbt:"Pos",entity:"@s"},":",{score:{name:"pve.random.1",objective:board}},";",{score:{name:"pve.random.2",objective:board}},";",{score:{name:"pve.random.3",objective:board}},";",{score:{name:"pve.random.4",objective:board}}]
# tellraw @a [{score:{name:"pve.random.sum",objective:board}},";",{score:{name:"pve.random",objective:board}},";",{score:{name:"pve.finalmove",objective:board}}]

execute if score pve.finalmove board matches 1.. run scoreboard players remove pve.stronghold.limit board 1

execute if score pve.finalmove board matches 1 run function minecraft:stronghold/reset/builder/move/1_0
execute if score pve.finalmove board matches 2 run function minecraft:stronghold/reset/builder/move/2_0
execute if score pve.finalmove board matches 3 run function minecraft:stronghold/reset/builder/move/0_1
execute if score pve.finalmove board matches 4 run function minecraft:stronghold/reset/builder/move/0_2

execute if score pve.finalmove board matches 1.. at @s run function minecraft:stronghold/reset/builder/main
