# execute if score 
# 无论多少人都有啦
execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/wolf
execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/witch
execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/predictor

execute if score wolf.total board matches 6.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/wolf
execute if score wolf.total board matches 13.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/wolf
execute if score wolf.total board matches 15.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/wolf
execute if score wolf.total board matches 17.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/wolf
execute if score wolf.total board matches 19.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/wolf
execute if score wolf.total board matches 21.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/wolf
execute if score wolf.total board matches 23.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/wolf


execute if score wolf.total board matches 6.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/guard

execute if score wolf.total board matches 8.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/hunter

execute if score wolf.total board matches 9.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/knight


execute if score wolf.total board matches 11.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/tnt

execute if score wolf.total board matches 12.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/cupid


execute if score wolf.total board matches 8.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/whitewolf


execute if score wolf.total board matches 14.. run execute as @r[team=wait.wolfpeople,gamemode=adventure] run function twolf/job/arsonist

# A 模式
scoreboard players set wolf.mode board 2
execute if score wolf.total board matches 5 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 7 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 9 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 10 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 11 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 12 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 14 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 16 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 18 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 20 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 22 run scoreboard players set wolf.mode board 1
execute if score wolf.total board matches 24 run scoreboard players set wolf.mode board 1