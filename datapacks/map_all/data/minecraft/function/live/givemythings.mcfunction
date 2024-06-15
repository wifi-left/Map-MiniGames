##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# scoreboard players set live.state state 1
effect clear @s
scoreboard players add @s live.job 0
execute if score @s live.job matches 0..0 run function minecraft:live/job/normal
execute if score @s live.job matches 1..1 run function minecraft:live/job/tank
execute if score @s live.job matches 2..2 run function minecraft:live/job/scientist
execute if score @s live.job matches 3..3 run function minecraft:live/job/shooter
execute if score @s live.job matches 4..4 run function minecraft:live/job/icarus
execute if score @s live.job matches 5..5 run function minecraft:live/job/cactus
execute if score @s live.job matches 6..6 run function minecraft:live/job/creeper
execute if score @s live.job matches 7..7 run function minecraft:live/job/old
# function minecraft:live/ingame/selkiller
# execute if score live.set.mode live.all matches 1..1 run team modify play.live.runner friendlyFire true

